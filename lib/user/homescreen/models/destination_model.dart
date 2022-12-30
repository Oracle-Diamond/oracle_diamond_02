import 'activity_model.dart';

class Destination {
  String? imageUrl;
  String? name;
  String? location;
  List<Activity>? activities;

  Destination({
    this.imageUrl,
    this.name,
    this.location,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/06/26/17/33/venice-2444521__340.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
  ),
  Activity(
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/30/05/43/asia-1782429__340.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
  ),
  Activity(
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/21/01/building-500295__340.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/badminton.jpg?alt=media',
    name: 'Badminton',
    location: 'UTM Convention Hall',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/tennis.jpg?alt=media',
    name: 'Tennis',
    location: 'UTM Convention Hall',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/pinpong.jpg?alt=media',
    name: 'PingPong',
    location: 'UTM Convention Hall',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/futsal.jpg?alt=media',
    name: 'Futsal',
    location: 'UTM Convention Hall',
    activities: activities,
  ),
];
