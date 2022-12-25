import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/main.dart';
import 'package:oracle_diamond_02/user/facilities/screen/facilities_list_screen.dart';
import 'package:oracle_diamond_02/user/facilities/screen/rounded_container.dart';
import 'package:oracle_diamond_02/assets.dart';
import 'package:oracle_diamond_02/user/user_select.dart';

class ProfileUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: Stack(children: [
        Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 214, 61, 74),
                      Colors.deepPurpleAccent
                    ],
                  ),
                ),
                child: Column(children: [
                  SizedBox(
                    height: 110.0,
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
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 32.0,
              ),
              child: RawMaterialButton(
                fillColor: Colors.red[900],
                elevation: 0,
                padding: const EdgeInsets.all(24.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: const Text("Log out",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => UserSelect(),
                  ));
                },
              ),
            )
          ],
        ),
      ]),
    );
  }
}
