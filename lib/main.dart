import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/firebase_options.dart';
import 'package:oracle_diamond_02/user/user_select.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //firebase line
  await Firebase.initializeApp(
    //firebase line
    options: DefaultFirebaseOptions.currentPlatform, //firebase line
  ); //firebase line

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserSelect(),
      debugShowCheckedModeBanner: false,
    );
  }
}
