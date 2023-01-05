import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/user/facilities/screen/model/badminton.dart';
import 'package:oracle_diamond_02/user/facilities/screen/model/facilities.dart';
import 'package:oracle_diamond_02/user/facilities/screen/facilities_details_screen.dart';
import 'package:oracle_diamond_02/admin/utils/flutter_flow_theme.dart';

class ListFacilitiesPage extends StatelessWidget {
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
              ),
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Badminton",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BadmintonScreen()));
                        },
                        icon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 110,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: TextField(
                          // controller: TextEditingController(text: locations[0]),
                          cursorColor: Theme.of(context).primaryColor,
                          style: dropdownMenuItem,
                          decoration: InputDecoration(
                              hintText: "Search Facilities",
                              hintStyle: TextStyle(
                                  color: Colors.black38, fontSize: 16),
                              prefixIcon: Material(
                                elevation: 0.0,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                child: Icon(Icons.search),
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 13)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 200, 20, 20),
                child: InkWell(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ListFacilitiesPage()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x99000000),
                          offset: Offset(1, 3),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                child: Image.asset(
                                  'assets/images/management.png',
                                  width: 85,
                                  height: 85,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  'Facilities Available',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
              children: <Widget>[]),
        ));
  }
}
