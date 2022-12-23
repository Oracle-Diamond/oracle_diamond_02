import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/admin/profile_screen2.dart';
import 'package:oracle_diamond_02/user/facilities/screen/model/facilities.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FacilitiesAdminDetails extends StatelessWidget {
  final Facilities facilities;

  FacilitiesAdminDetails(this.facilities);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => HomePageWidget()));
          },
        ),
      ),
      body: Container(
          padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
          child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: ListView(children: [
                const Text(
                  "Mon, 15/11/2022",
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  "Facilities Management",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20.0),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 150.0,
                        height: 150.0,
                        child: CircleAvatar(
                          radius: 75.0,
                          backgroundImage: NetworkImage(facilities.ImageUrl),
                        ),
                      ),
                    ]),
                SizedBox(height: 20.0),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(height: 20.0),
                              Text(
                                "Facility Name",
                                style: TextStyle(fontSize: 18.0),
                              ),
                              SizedBox(width: 10.0),
                              Icon(
                                FontAwesomeIcons.pen,
                                size: 12.0,
                                color: Colors.black54,
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            facilities.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: <Widget>[
                              Text(
                                "Facility Type",
                                style: TextStyle(fontSize: 18.0),
                              ),
                              SizedBox(width: 10.0),
                              Icon(
                                FontAwesomeIcons.pen,
                                size: 12.0,
                                color: Colors.black54,
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Indoor",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: <Widget>[
                              Text(
                                "No of Court",
                                style: TextStyle(fontSize: 18.0),
                              ),
                              SizedBox(width: 10.0),
                              Icon(
                                FontAwesomeIcons.pen,
                                size: 12.0,
                                color: Colors.black54,
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "9",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                        ])
                  ],
                )
              ]))),
    );
  }
}
