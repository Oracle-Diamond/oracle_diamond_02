import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/user/facilities/screen/model/facilities.dart';
import 'package:oracle_diamond_02/user/facilities/screen/facilities_details_screen.dart';
import 'package:oracle_diamond_02/assets.dart';

class ReservationRecordPage extends StatefulWidget {
  ReservationRecordPage({Key? key}) : super(key: key);

  _ReservationRecordPageState createState() => _ReservationRecordPageState();
}

class _ReservationRecordPageState extends State<ReservationRecordPage> {
  final TextStyle dropdownMenuItem =
      TextStyle(color: Colors.black, fontSize: 18);

  final primary = Colors.red[900];
  final secondary = Color(0xfff29a94);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(top: 145),
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: facilitiesList.length,
                      itemBuilder: (BuildContext context, int index) {
                        facilitiesList[index];
                        return buildList(context, index);
                      })),
              Container(
                padding: EdgeInsets.only(left: 25.0, top: 45.0, right: 25.0),
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Column(children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Reservation Record",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/profile.jpg?alt=media"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 40.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        buildTopChip("Reservations", true),
                        buildTopChip("Cancelled", false),
                      ],
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList(BuildContext context, int index) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                FacilitiesDetailsScreen(facilitiesList[index]),
          ));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          width: double.infinity,
          height: 110,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 3, color: secondary),
                  image: DecorationImage(
                      image: NetworkImage(facilitiesListMap[index]['logoText']),
                      fit: BoxFit.fill),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      facilitiesListMap[index]['name'],
                      style: TextStyle(
                          color: primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: secondary,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(facilitiesListMap[index]['location'],
                            style: TextStyle(
                                color: primary,
                                fontSize: 13,
                                letterSpacing: .3)),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.sports_tennis,
                          color: secondary,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(facilitiesListMap[index]['type'],
                            style: TextStyle(
                                color: primary,
                                fontSize: 13,
                                letterSpacing: .3)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

Container buildTopChip(String label, bool isActive) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 5.0),
    child: Chip(
      padding: EdgeInsets.all(8.0),
      label: Text(
        label,
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
      backgroundColor: isActive ? Colors.orange : Colors.grey,
    ),
  );
}
