import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/main.dart';
import 'package:oracle_diamond_02/profile_screen2.dart';

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
            margin: EdgeInsets.all(16),
            height: 225,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.red[400],
            ),
            width: double.infinity,
            child: ElevatedButton(
                child: Text(
                  "Admin",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 239, 83, 80)),
                )),
          ),
          Container(
            margin: EdgeInsets.all(16),
            height: 225,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.red[400],
            ),
            width: double.infinity,
            child: ElevatedButton(
                child: Text(
                  "Student/Staff",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 239, 83, 80)),
                )),
          ),
        ],
      ),
    ));
  }
}
