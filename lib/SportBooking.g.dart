// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SportBooking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportBooking _$SportBookingFromJson(Map<String, dynamic> json) => SportBooking(
      email: json['email'] as String?,
      bookingStart: json['bookingStart'] == null
          ? null
          : DateTime.parse(json['bookingStart'] as String),
      bookingEnd: json['bookingEnd'] == null
          ? null
          : DateTime.parse(json['bookingEnd'] as String),
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      serviceName: json['serviceName'] as String?,
    );

Map<String, dynamic> _$SportBookingToJson(SportBooking instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'serviceName': instance.serviceName,
      'bookingStart': instance.bookingStart?.toIso8601String(),
      'bookingEnd': instance.bookingEnd?.toIso8601String(),
      'email': instance.email,
    };
