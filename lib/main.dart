import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:oracle_diamond_02/SportBooking.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:oracle_diamond_02/booking_calendar.dart';

import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/firebase_options.dart';
import 'package:oracle_diamond_02/screen/facilities_list_screen.dart';
import 'package:oracle_diamond_02/user_select.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //firebase line
  await Firebase.initializeApp(
    //firebase line
    options: DefaultFirebaseOptions.currentPlatform, //firebase line
  ); //firebase line

  //firebase connection test
  // FirebaseFirestore.instance.collection('bookings').doc('document-01').set({'field-01':456}); //write
  // FirebaseFirestore.instance.collection('bookings').doc('document-01').get(); //read, assign to a variable and check while debugging

  //runApp(const MyApp());

  initializeDateFormatting()
      .then((_) => runApp(const BookingCalendarDemoApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UserSelect(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
//---------------------afiq
//Hi
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: FutureBuilder(
            future: _initializeFirebase(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return const LoginScreen();
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }));
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Login function
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("No user found for that email");
      }
    }

    return user;
  }

  @override
  Widget build(BuildContext context) {
    //create the textfield controller
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5.0,
          ),
          const Text("User Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(
            height: 25.0,
          ),
          Container(
            height: 0.6,
            width: 350.0,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 25.0,
          ),
          Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/c/cb/UTM-LOGO-FULL.png',
            height: 150,
            width: 290,
            alignment: const Alignment(0, 0.5),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const SizedBox(
            height: 30.00,
          ),
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                hintText: "UTM Username",
                prefixIcon: Icon(Icons.mail, color: Colors.black),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)))),
          ),
          const SizedBox(
            height: 26.0,
          ),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock, color: Colors.black),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)))),
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Text("Forgot password?",
              style: TextStyle(
                color: Color.fromARGB(255, 206, 84, 84),
              )),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: const Color.fromARGB(255, 206, 84, 84),
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              onPressed: () async {
                User? user = await loginUsingEmailPassword(
                    email: _emailController.text,
                    password: _passwordController.text,
                    context: context);
                print(user);
                if (user != null) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => FacilitiesListScreen()));
                }
              },
              child: const Text("Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}



//mynew edit - start

CollectionReference bookings = FirebaseFirestore.instance.collection('bookings');

// *1 replacement
  ///This is how can you get the reference to your data from the collection, and serialize the data with the help of the Firestore [//withConverter]. This function would be in your repository.
  CollectionReference<SportBooking> getBookingStream() {
    return bookings.doc().collection('bookings').withConverter<SportBooking>(
          fromFirestore: (snapshots, _) => SportBooking.fromJson(snapshots.data()!),
          toFirestore: (snapshots, _) => snapshots.toJson(),
        );
  }

  ///After you fetched the data from firestore, we only need to have a list of datetimes from the bookings:
  List<DateTimeRange> convertStreamResultFirebase(
    {required dynamic streamResult}) {
    ///here you can parse the streamresult and convert to [List<DateTimeRange>]
    ///Note that this is dynamic, so you need to know what properties are available on your result, in our case the [SportBooking] has bookingStart and bookingEnd property
      List<DateTimeRange> converted = [];
      for (var i = 0; i < streamResult.size; i++) {
        final item = streamResult.docs[i].data();
        converted.add(DateTimeRange(start: (item.bookingStart!), end: (item.bookingEnd!)));
      }
  return converted;
}

  ///This is how you upload data to Firestore
  Future<dynamic> uploadBookingFirebase(
    {required BookingService newBooking}) async {
    await bookings
        .doc() 
        //.collection('bookings')
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
        serviceDuration: 60,    //myedit
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
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('UTM Court Booking'),
          ),
          body: Center(
            child: BookingCalendar(
              bookingService: mockBookingService,
              convertStreamResultToDateTimeRanges: convertStreamResultMock,
              // getBookingStream: getBookingStreamMock,
              // uploadBooking: uploadBookingMock,
              getBookingStream: getBookingStreamMock,   //direction not correct
              uploadBooking: uploadBookingFirebase,
              pauseSlots: generatePauseSlots(),
              pauseSlotText: 'LUNCH',
              hideBreakTime: false,
              loadingWidget: const Text('Fetching data...'),
              uploadingWidget: const CircularProgressIndicator(),
              locale: 'en_US',    //myedit
              startingDayOfWeek: StartingDayOfWeek.tuesday,
              disabledDays: const [6, 7],
            ),
          ),
        ));
  }
}
//feature: booking calendar - end









