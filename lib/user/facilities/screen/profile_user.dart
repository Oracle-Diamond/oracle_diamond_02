import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/main.dart';
import 'package:oracle_diamond_02/user/facilities/screen/facilities_list_screen.dart';
import 'package:oracle_diamond_02/user/facilities/screen/rounded_container.dart';
import 'package:oracle_diamond_02/assets.dart';
import 'package:oracle_diamond_02/user/user_select.dart';
import 'package:oracle_diamond_02/admin/utils/flutter_flow_theme.dart';
import 'package:oracle_diamond_02/admin/utils/flutter_flow_widgets.dart';

class ProfileUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: Stack(children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 214, 61, 74),
                        Colors.deepPurpleAccent
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    )),
                child: Column(children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  CircleAvatar(
                    radius: 65.0,
                    backgroundImage: NetworkImage(profile),
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Nick Woo Fong ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'nickwoofong1@graduate.utm.my',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'A20EC0040',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  )
                ]),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.45,
                left: 20.0,
                right: 20.0,
                child: Card(
                    child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  child: Column(
                                children: [
                                  Text(
                                    'Status',
                                    style: TextStyle(
                                        color: Colors.red[400], fontSize: 14.0),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Good",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  )
                                ],
                              )),
                              Container(
                                  child: Column(
                                children: [
                                  Text(
                                    'Age',
                                    style: TextStyle(
                                        color: Colors.red[400], fontSize: 14.0),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    '19 yrs',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  )
                                ],
                              ))
                            ])))),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FacilitiesListScreen(),
                ));
              },
              child: RoundedContainer(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.sports_tennis,
                      color: Color.fromARGB(255, 28, 151, 182),
                    ),
                  ),
                  title: Text("Facilities Available"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BookingCalendarDemoApp(),
                ));
              },
              child: RoundedContainer(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.event_available,
                      color: Color.fromARGB(255, 224, 214, 66),
                    ),
                  ),
                  title: Text("Booking Now"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: RoundedContainer(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.message,
                      color: Color.fromARGB(255, 22, 189, 111),
                    ),
                  ),
                  title: Text("Reservation"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            FFButtonWidget(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UserSelect(),
                ));
              },
              text: 'Log Out',
              options: FFButtonOptions(
                width: 130,
                height: 40,
                color: Color(0xFF700500),
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                //borderRadius: BorderRadius.circular(15),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
