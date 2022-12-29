import 'package:oracle_diamond_02/admin/utils/flutter_flow_theme.dart';
import 'package:oracle_diamond_02/admin/utils/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

class ReservationPageWidget extends StatefulWidget {
  const ReservationPageWidget({Key? key}) : super(key: key);

  @override
  _ReservationPageWidgetState createState() => _ReservationPageWidgetState();
}

class _ReservationPageWidgetState extends State<ReservationPageWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

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
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.1, -0.01),
                        child: Container(
                          width: 410,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFC50811),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.9, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                size: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w100,
                                  ),
                        ),
                      ),
                    ),
                    Text(
                      '000102340908',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w100,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 420,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFFE61A26),
                ),
                child: Align(
                  alignment: AlignmentDirectional(-0.05, 0),
                  child: Text(
                    'Badminton Courts',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 20,
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 450,
                height: 420,
                decoration: BoxDecoration(
                  color: Color(0xFFCD4449),
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.9, 0.2),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                        child: Container(
                          width: 100,
                          height: 100,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/oracle-diamond-02.appspot.com/o/profile.jpg?alt=media',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
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
                  text: 'Check In',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF7B0910),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
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
