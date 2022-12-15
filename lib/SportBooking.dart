import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sport.bp/util/app_util.dart';
part 'SportBooking.g.dart';

@JsonSerializable(explicitToJson: true)
class SportBooking {
  /// The generated code assumes these values exist in JSON.
  final String? userId;
  final String? userName;
  final String? placeId;
  final String? serviceName;
  //myedit //final int? serviceDuration;
  //myedit //final int? servicePrice;

  //Because we are storing timestamp in Firestore, we need a converter for DateTime
  /* static DateTime timeStampToDateTime(Timestamp timestamp) {
    return DateTime.parse(timestamp.toDate().toString());
  }

  static Timestamp dateTimeToTimeStamp(DateTime? dateTime) {
    return Timestamp.fromDate(dateTime ?? DateTime.now()); //To TimeStamp
  }*/
  @JsonKey(fromJson: AppUtil.timeStampToDateTime, toJson: AppUtil.dateTimeToTimeStamp)
  final DateTime? bookingStart;
  @JsonKey(fromJson: AppUtil.timeStampToDateTime, toJson: AppUtil.dateTimeToTimeStamp)
  final DateTime? bookingEnd;
  final String? email;
  //myedit //final String? phoneNumber;
  //myedit //final String? placeAddress;

  SportBooking(
      {this.email,
      //myedit //this.phoneNumber,
      //myedit //this.placeAddress,
      this.bookingStart,
      this.bookingEnd,
      //myedit //this.placeId,
      this.userId,
      this.userName,
      this.serviceName,
      //myedit //this.serviceDuration,
      //myedit //this.servicePrice
      });

  /// Connect the generated [_$SportBookingFromJson] function to the `fromJson`
  /// factory.
  factory SportBooking.fromJson(Map<String, dynamic> json) => _$SportBookingFromJson(json);

  /// Connect the generated [_$SportBookingToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SportBookingToJson(this);
}
