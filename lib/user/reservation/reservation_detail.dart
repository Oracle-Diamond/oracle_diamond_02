import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/user/reservation/reservation.dart';
import 'package:oracle_diamond_02/admin/utils/flutter_flow_theme.dart';
import 'package:oracle_diamond_02/admin/utils/flutter_flow_widgets.dart';

class ReservationDetails extends StatelessWidget {
  final Reservation reservation;

  ReservationDetails(this.reservation);
  final Color primary = Color(0xFF700500);
  final Color active = Color.fromARGB(255, 235, 235, 236);
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 410,
                height: 50,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.75, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 0, 100, 0),
                        child: Text(
                          'BOOKING ID',
                          textAlign: TextAlign.end,
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ),
                    ),
                    Text(
                      '000102340908',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16.0, right: 40),
                decoration: BoxDecoration(
                    color: primary,
                    boxShadow: [BoxShadow(color: Colors.black45)]),
                height: 480,
                width: double.infinity,
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 10,
                          alignment: Alignment.center,
                        ),
                        CircleAvatar(
                          radius: 55.0,
                          backgroundImage: NetworkImage(reservation.ImageUrl),
                          backgroundColor: Colors.white,
                        ),
                        Text(reservation.name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            )),
                        SizedBox(height: 20.0),
                        _buildRow("Username : ", " Muhamad Adam"),
                        Container(
                          height: 0.6,
                          width: 350.0,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10.0),
                        _buildRow("User ID : ", " A20EC0045"),
                        Container(
                          height: 0.6,
                          width: 350.0,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10.0),
                        _buildRow("Facilities Name : ", reservation.name),
                        Container(
                          height: 0.6,
                          width: 350.0,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10.0),
                        _buildRow("Facilities Type : ", reservation.type),
                        Container(
                          height: 0.6,
                          width: 350.0,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10.0),
                        _buildRow("Facilities No : ", " Court 1"),
                        Container(
                          height: 0.6,
                          width: 350.0,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10.0),
                        _buildRow("Pax : ", " 1"),
                        Container(
                          height: 0.6,
                          width: 350.0,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10.0),
                        _buildRow(
                            "Time Request : ", " 27 April 2022, 16:50-18:50"),
                        _buildDivider(),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Edit Reservation',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color.fromARGB(255, 14, 155, 21),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: FFButtonWidget(
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Alert'),
                      content: const Text(
                          'Are you sure want to cancel the reservation?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'NO'),
                          child: const Text('NO'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'YES'),
                          child: const Text('YES'),
                        ),
                      ],
                    ),
                  ),
                  text: 'Cancel Reservation',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color.fromARGB(255, 233, 99, 81),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
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
}

Divider _buildDivider() {
  return Divider(
    color: Colors.white,
  );
}

Widget _buildRow(String title, String text) {
  final TextStyle tStyle = TextStyle(color: Colors.white, fontSize: 16.0);
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(children: [
      Text(
        title,
        style: tStyle,
      ),
      Text(
        text,
        style: tStyle,
        textAlign: TextAlign.right,
      ),
    ]),
  );
}
