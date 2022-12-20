// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SportBooking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportBooking _$SportBookingFromJson(Map<String, dynamic> json) => SportBooking(
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      placeAddress: json['placeAddress'] as String?,
      bookingStart:
          SportBooking.timeStampToDateTime(json['bookingStart'] as Timestamp),
      bookingEnd:
          SportBooking.timeStampToDateTime(json['bookingEnd'] as Timestamp),
      placeId: json['placeId'] as String?,
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      serviceName: json['serviceName'] as String?,
      serviceDuration: json['serviceDuration'] as int?,
      servicePrice: json['servicePrice'] as int?,
    );

Map<String, dynamic> _$SportBookingToJson(SportBooking instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'placeId': instance.placeId,
      'serviceName': instance.serviceName,
      'serviceDuration': instance.serviceDuration,
      'servicePrice': instance.servicePrice,
      'bookingStart': SportBooking.dateTimeToTimeStamp(instance.bookingStart),
      'bookingEnd': SportBooking.dateTimeToTimeStamp(instance.bookingEnd),
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'placeAddress': instance.placeAddress,
    };
