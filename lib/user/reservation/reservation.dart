class Reservation {
  String name;
  String ImageUrl;

  Reservation({required this.name, required this.ImageUrl});
}

List<Reservation> reservationList = [
  Reservation(
      name: 'Badminton Court ',
      ImageUrl:
          'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/badminton.jpg?alt=media'),
  Reservation(
      name: 'Tennis Court ',
      ImageUrl:
          'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/tennis.jpg?alt=media'),
  Reservation(
      name: 'PingPong Court ',
      ImageUrl:
          'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/pinpong.jpg?alt=media'),
  Reservation(
      name: 'Futsal Court ',
      ImageUrl:
          'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/futsal.jpg?alt=media'),
];

final List<Map> reservationListMap = [
  {
    "name": "Badminton Court ",
    "location": "Facilities - Court 8",
    "type": "Indoor Courts",
    "logoText":
        "https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/badminton.jpg?alt=media"
  },
  {
    "name": "Tennis Court",
    "location": "Facilities - Court 19",
    "type": "Outdoor Courts",
    "logoText":
        "https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/tennis.jpg?alt=media"
  },
  {
    "name": "PingPong Court",
    "location": "Facilities - Court 5",
    "type": "Indoor Courts",
    "logoText":
        "https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/pinpong.jpg?alt=media"
  },
  {
    "name": "Futsal Court",
    "location": "Facilities - Court 1",
    "type": "Indoor Courts",
    "logoText":
        "https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/futsal.jpg?alt=media"
  },
];
