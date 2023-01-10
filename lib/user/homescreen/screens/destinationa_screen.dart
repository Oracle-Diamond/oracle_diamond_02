import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/user/facilities/screen/model/facilitieslist.dart';
import 'package:oracle_diamond_02/user/homescreen/models/destination_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationScreen extends StatefulWidget {
  final Destination? destination;

  DestinationScreen({this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  final Color icon = Color(0xffEF412D);
  final Color color1 = Color(0xffCF3529);
  final Color color2 = Color(0xffE1372F);
  final Color color3 = Color(0xffFF6C1C);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
                top: 350,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [color2, color3],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                )),
            Positioned(
                top: 350,
                left: 0,
                right: 150,
                bottom: 80,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: color1,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50.0))),
                )),
            Positioned(
              top: 350,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 40.0),
                    Text(
                      "Indoor\nOutdoor Court".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 30.0),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Sports facilities allow \nstudents and staff of \nUniversity Teknologi Malaysia(UTM)\nto book the desired facilities\nbased on a first come first serve ",
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    SizedBox(height: 50.0),
                    SizedBox(
                      height: 30.0,
                      width: double.infinity,
                      child: Row(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.fire, color: Colors.white),
                          Spacer(),
                          VerticalDivider(color: Colors.white),
                          Spacer(),
                          Text(
                            "First Come First Serve",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                          Spacer(),
                          VerticalDivider(color: Colors.white),
                          Spacer(),
                          Icon(FontAwesomeIcons.stopwatch, color: Colors.white),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 380,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.black38, blurRadius: 30.0)
              ]),
              child: SizedBox(
                height: 350,
                child: Image(
                  image: NetworkImage(widget.destination!.imageUrl!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 325,
              right: 20,
              child: RawMaterialButton(
                child: Text("See All",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 18.0,
                    )),
                fillColor: Colors.red[900],
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ListFacilitiesPage()));
                },
              ),
            ),
            Container(
                height: 70.0,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                )),
          ],
        ),
      ),
    );
  }
}
