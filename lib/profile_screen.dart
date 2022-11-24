import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 0.5,
      color: Color.fromARGB(255, 206, 84, 84),
      child: Center(
          child: Text(
        'Welcome, Admin',
        style: TextStyle(color: Colors.white),
      )),
      //body: (const SizedBox(
      //width: 400.0,
      //height: 150.0,
      //child: DecoratedBox(decoration: const BoxDecoration(color: Colors.red)),
      //child: Center(child: Text 'Welcome')
      //)),
    );
  }
}
