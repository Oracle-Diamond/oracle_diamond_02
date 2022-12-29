import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/admin/admin_manage_facilities/admin_manage.dart';
import 'package:oracle_diamond_02/user/facilities/screen/model/facilities.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FacilitiesAdminDetails extends StatelessWidget {
  final Facilities facilities;

  FacilitiesAdminDetails(this.facilities);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 165, 15, 7),
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => FacilitiesAdmin()));
          },
        ),
      ),
      body: Container(
          padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                const Text(
                  "Mon, 15/11/2022",
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  "Facilities Management",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    SizedBox(width: 20.0),
                    Container(
                      width: 150.0,
                      height: 200.0,
                      child: CircleAvatar(
                        radius: 75.0,
                        backgroundImage: NetworkImage(facilities.ImageUrl),
                        child: Icon(Icons.camera_alt),
                      ),
                    ),
                    SizedBox(width: 20.0),
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
                              fontWeight: FontWeight.bold, fontSize: 18.0),
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
                              fontWeight: FontWeight.bold, fontSize: 18.0),
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
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          child: Text(
                            "View Overall Time Table",
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => FacilitiesAdmin()));
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20, width: 20),
                Row(children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FacilitiesAdmin()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.red,
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Court 1",
                                style: TextStyle(fontWeight: FontWeight.normal),
                              )),
                          width: 100.0,
                          height: 100.0)),
                  SizedBox(height: 10, width: 35),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FacilitiesAdmin()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.red,
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Court 2",
                                style: TextStyle(fontWeight: FontWeight.normal),
                              )),
                          width: 100.0,
                          height: 100.0)),
                  SizedBox(height: 10, width: 35),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FacilitiesAdmin()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.red,
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Court 3",
                                style: TextStyle(fontWeight: FontWeight.normal),
                              )),
                          width: 100.0,
                          height: 100.0))
                ]),
                SizedBox(
                  height: 20,
                ),
                Row(children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FacilitiesAdmin()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.red,
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Court 4",
                                style: TextStyle(fontWeight: FontWeight.normal),
                              )),
                          width: 100.0,
                          height: 100.0)),
                  SizedBox(height: 10, width: 35),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FacilitiesAdmin()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.red,
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Court 5",
                                style: TextStyle(fontWeight: FontWeight.normal),
                              )),
                          width: 100.0,
                          height: 100.0)),
                  SizedBox(height: 10, width: 35),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FacilitiesAdmin()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.red,
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Court 6",
                                style: TextStyle(fontWeight: FontWeight.normal),
                              )),
                          width: 100.0,
                          height: 100.0))
                ]),
              ],
            ),
          )),
    );
  }
}
