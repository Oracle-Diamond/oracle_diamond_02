import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:oracle_diamond_02/user_select.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

const brightYellow = Color(0xFFFFD300);
const darkYellow = Color(0xFFFFB900);

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brightYellow,
      body: Column(
        children: [
          Flexible(
            flex: 8,
            child: FlareActor(
              'assets\images\flare\bus.flr',
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: 'driving',
            ),
          ),
          Flexible(
            flex: 2,
            child: RawMaterialButton(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Text(
                'Tap here to Login',
                style: TextStyle(color: Colors.black54),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UserSelect(),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
