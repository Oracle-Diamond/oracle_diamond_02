import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:oracle_diamond_02/SportBooking.dart';
import 'package:oracle_diamond_02/user/booking_calendar.dart';
import 'dart:async';
import 'package:flutter/material.dart';

//mynew edit - start

CollectionReference bookings =
    FirebaseFirestore.instance.collection('bookings');

// CollectionReference<SportBooking> getBookingStream() {

//commented 260124H Dec 2022
// CollectionReference<SportBooking> getBookingStream({required String placeId}) {
//   return bookings.doc().collection('bookings').withConverter<SportBooking>(
//         fromFirestore: (snapshots, _) => SportBooking.fromJson(snapshots.data()!),
//         toFirestore: (snapshots, _) => snapshots.toJson(),
//       );
// }

Stream<QuerySnapshot<SportBooking>> getBookingStreamFirebase(
    {required DateTime end, required DateTime start}) {
  return FirebaseFirestore.instance
      .collection('bookings')
      .withConverter<SportBooking>(
        fromFirestore: (snapshots, _) =>
            SportBooking.fromJson(snapshots.data()!),
        toFirestore: (snapshots, _) => snapshots.toJson(),
      )
      .where('bookingStart', isGreaterThanOrEqualTo: start)
      .where('bookingStart', isLessThanOrEqualTo: end)
      .snapshots();
}

///How you actually get the stream of data from Firestore with the help of the previous function
///note that this query filters are for my data structure, you need to adjust it to your solution.
// Stream<dynamic>? getBookingStreamFirebase(
//   {required DateTime end, required DateTime start}) {
//      return ApiRepository.
//                       .getBookingStream(placeId: 'YOUR_DOC_ID')
//                       .where('bookingStart', isGreaterThanOrEqualTo: start)
//                       .where('bookingStart', isLessThanOrEqualTo: end)
//                       .snapshots(),
// }

// Stream<dynamic>? getBookingStreamFirebase(
//   {required DateTime end, required DateTime start}) {
//      return getBookingStream().
//                       // .getBookingStream(placeId: 'YOUR_DOC_ID')
//                       .where('bookingStart', isGreaterThanOrEqualTo: start)
//                       .where('bookingStart', isLessThanOrEqualTo: end)
//                       .snapshots();
// }

///After you fetched the data from firestore, we only need to have a list of datetimes from the bookings:
List<DateTimeRange> convertStreamResultFirebase(
    {required dynamic streamResult}) {
  ///here you can parse the streamresult and convert to [List<DateTimeRange>]
  ///Note that this is dynamic, so you need to know what properties are available on your result, in our case the [SportBooking] has bookingStart and bookingEnd property
  List<DateTimeRange> converted = [];
  for (var i = 0; i < streamResult.size; i++) {
    final item = streamResult.docs[i].data();
    converted.add(
        DateTimeRange(start: (item.bookingStart!), end: (item.bookingEnd!)));
  }
  return converted;
}

///This is how you upload data to Firestore
Future<dynamic> uploadBookingFirebase(
    {required BookingService newBooking}) async {
  // await bookings
  return bookings
      // .doc()
      // .collection('bookings')
      .add(newBooking.toJson())
      .then((value) => print("Booking Added"))
      .catchError((error) => print("Failed to add booking: $error"));
}

//mynew edit end

//feature: booking calendar - start
class BookingCalendarDemoApp extends StatefulWidget {
  const BookingCalendarDemoApp({Key? key}) : super(key: key);

  @override
  State<BookingCalendarDemoApp> createState() => _BookingCalendarDemoAppState();
}

class _BookingCalendarDemoAppState extends State<BookingCalendarDemoApp> {
  final now = DateTime.now();
  late BookingService mockBookingService;

  @override
  void initState() {
    super.initState();
    // DateTime.now().startOfDay
    // DateTime.now().endOfDay
    mockBookingService = BookingService(
        serviceName: 'Booking Court',
        // serviceDuration: 30,
        serviceDuration: 60, //myedit
        bookingEnd: DateTime(now.year, now.month, now.day, 18, 0),
        bookingStart: DateTime(now.year, now.month, now.day, 8, 0));
  }

  // not for firebase
  Stream<dynamic>? getBookingStreamMock(
      {required DateTime end, required DateTime start}) {
    return Stream.value([]);
  }

  //not for firebase?
  Future<dynamic> uploadBookingMock(
      {required BookingService newBooking}) async {
    await Future.delayed(const Duration(seconds: 1));
    converted.add(DateTimeRange(
        start: newBooking.bookingStart, end: newBooking.bookingEnd));
    print('${newBooking.toJson()} has been uploaded');
  }

  List<DateTimeRange> converted = [];

  List<DateTimeRange> convertStreamResultMock({required dynamic streamResult}) {
    ///here you can parse the streamresult and convert to [List<DateTimeRange>]
    ///take care this is only mock, so if you add today as disabledDays it will still be visible on the first load
    ///disabledDays will properly work with real data
    DateTime first = now;
    DateTime second = now.add(const Duration(minutes: 55));
    DateTime third = now.subtract(const Duration(minutes: 240));
    DateTime fourth = now.subtract(const Duration(minutes: 500));
    converted.add(
        DateTimeRange(start: first, end: now.add(const Duration(minutes: 30))));
    converted.add(DateTimeRange(
        start: second, end: second.add(const Duration(minutes: 23))));
    converted.add(DateTimeRange(
        start: third, end: third.add(const Duration(minutes: 15))));
    converted.add(DateTimeRange(
        start: fourth, end: fourth.add(const Duration(minutes: 50))));
    return converted;
  }

  List<DateTimeRange> generatePauseSlots() {
    return [
      DateTimeRange(
          start: DateTime(now.year, now.month, now.day, 12, 0),
          end: DateTime(now.year, now.month, now.day, 13, 0))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'UTM Court Booking',
        theme: ThemeData(
          primarySwatch: Colors.red, //afiq edit
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('UTM Court Booking'), //afiq edit
          ),
          body: Center(
            child: BookingCalendar(
              bookingService: mockBookingService,
              convertStreamResultToDateTimeRanges: convertStreamResultMock,
              // getBookingStream: getBookingStreamMock,
              // uploadBooking: uploadBookingMock,
              getBookingStream: getBookingStreamFirebase,
              uploadBooking: uploadBookingFirebase,

              // pauseSlots: generatePauseSlots(),
              // pauseSlotText: 'LUNCH',
              // hideBreakTime: false,
              loadingWidget: const Text('Fetching data...'),

              // uploadingWidget: const CircularProgressIndicator(),
              uploadingWidget: const Text('Booking Your Court'),

              //locale: 'en_US',    //myedit
              startingDayOfWeek: StartingDayOfWeek.tuesday,
              disabledDays: const [6, 7],
            ),
          ),
        ));
  }
}
//feature: booking calendar - end
