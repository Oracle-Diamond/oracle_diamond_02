class Reservation {
  String name;
  String type;
  String ImageUrl;

  Reservation({required this.name, required this.type, required this.ImageUrl});
}

List<Reservation> reservationList = [
  Reservation(
      name: 'Badminton Court ',
      type: 'Indoor',
      ImageUrl:
          'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/badminton.jpg?alt=media'),
  Reservation(
      name: 'Tennis Court ',
      type: 'Outdoor',
      ImageUrl:
          'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/tennis.jpg?alt=media'),
  Reservation(
      name: 'PingPong Court ',
      type: 'Indoor',
      ImageUrl:
          'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/pinpong.jpg?alt=media'),
  Reservation(
      name: 'Futsal Court ',
      type: 'Indoor',
      ImageUrl:
          'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/futsal.jpg?alt=media'),
];

final List<Map> reservationListMap = [
  {
    "name": "Badminton Court ",
    "location": "Facilities ",
    "type": "To be check in",
    "logoText":
        "https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/badminton.jpg?alt=media"
  },
  {
    "name": "Tennis Court",
    "location": "Facilities ",
    "type": "Complete | Rebook ",
    "logoText":
        "https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/tennis.jpg?alt=media"
  },
  {
    "name": "PingPong Court",
    "location": "Facilities ",
    "type": "To be check in",
    "logoText":
        "https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/pinpong.jpg?alt=media"
  },
  {
    "name": "Futsal Court",
    "location": "Facilities",
    "type": "Complete | Rebook",
    "logoText":
        "https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/futsal.jpg?alt=media"
  },
];
