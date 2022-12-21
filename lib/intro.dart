import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:oracle_diamond_02/user_select.dart';

class IntroPage extends StatefulWidget {
  static final String path = "lib/intro.dart";
  @override
  _IntroPageState createState() => _IntroPageState();
}

const brightYellow = Color.fromARGB(255, 255, 255, 251);
const darkYellow = Color(0xFFFFB900);

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brightYellow,
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 8,
            child: Lottie.asset('assets/images/LottieLogo1.json'),
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
