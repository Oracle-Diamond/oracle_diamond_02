import 'package:flutter/material.dart';

class Facilities {
  String name;
  String description;
  String ImageUrl;

  Facilities(
      {required this.name, required this.description, required this.ImageUrl});
}

List<Facilities> facilitiesList = [
  Facilities(
      name: 'Badminton',
      description:
          'Badminton Courts are the rectangular surfaces used for the racket sport of badminton. divided in half by a center badminton net, courts are usually marked for both singles or doubles games with boundary widths varying between the two match types',
      ImageUrl:
          'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/badminton.jpg?alt=media'),
  Facilities(
      name: 'Tennis',
      description:
          'Table tennis, also known as ping-pong and whiff-whaff, is a sport in which two or four players hit a lightweight ball, also known as the ping-pong ball, back and forth across a table using small rackets. The game takes place on a hard table divided by a net.',
      ImageUrl:
          'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/tennis.jpg?alt=media'),
  Facilities(
      name: 'PingPong',
      description:
          'Table tennis, also known as ping-pong and whiff-whaff, is a sport in which two or four players hit a lightweight ball, also known as the ping-pong ball, back and forth across a table using small rackets. The game takes place on a hard table divided by a net.',
      ImageUrl:
          'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/pinpong.jpg?alt=media'),
  Facilities(
      name: 'Futsal',
      description:
          'Futsal is an association football-based game playedon a hard court smaller than a football pitch, and mainly indoors. It has similarities to five-a-sidefootball and indoor soccer.',
      ImageUrl:
          'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/futsal.jpg?alt=media'),
];
