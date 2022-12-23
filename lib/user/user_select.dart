import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/admin/admin_login.dart';
import 'package:oracle_diamond_02/main.dart';
import 'package:oracle_diamond_02/admin/profile_screen2.dart';

class UserSelect extends StatefulWidget {
  const UserSelect({super.key});

  @override
  State<UserSelect> createState() => _UserSelectState();
}

class _UserSelectState extends State<UserSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 5.0,
          ),
          const Text("User Select",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(
            height: 25.0,
          ),
          Container(
            height: 0.6,
            width: 350.0,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 25.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AdminPage()));
            },
            child: Container(
              margin: EdgeInsets.all(16),
              height: 225,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.red[900],
              ),
              width: double.infinity,
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Admin",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
              margin: EdgeInsets.all(16),
              height: 225,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.red[900],
              ),
              width: double.infinity,
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Student/Staff",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          ),
        ],
      ),
    ));
  }
}
