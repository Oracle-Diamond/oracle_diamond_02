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
        'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/futsal.jpg?alt=media',
    name: 'Futsal Court ',
    type: 'Indoor Court',
    rating: 5,
  ),
  Activity(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/pinpong.jpg?alt=media',
    name: 'Pingpong Court',
    type: 'Indoor Court',
    rating: 4,
  ),
  Activity(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/tennis.jpg?alt=media',
    name: 'Tennis Court',
    type: 'Outdoor Court',
    rating: 3,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/badminton.jpg?alt=media',
    name: 'Indoor Courts',
    location: 'UTM Convention Hall',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/tennis.jpg?alt=media',
    name: 'Outdoor Courts',
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
