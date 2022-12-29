import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/admin/admin_login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oracle_diamond_02/user/loginscreen.dart';

class UserSelect extends StatefulWidget {
  const UserSelect({super.key});

  @override
  State<UserSelect> createState() => _UserSelectState();
}

class _UserSelectState extends State<UserSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff0f0f0),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover),
          ),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only()),
                    Center(
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/c/cb/UTM-LOGO-FULL.png',
                        height: 150,
                        width: 290,
                        alignment: const Alignment(0, 1.5),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 200),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomeScreenPage()));
                },
                child: Container(
                  margin: EdgeInsets.all(16),
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black,
                  ),
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "User Login ",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                          letterSpacing: 0.168,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Administrator? ",
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                ),
                InkWell(
                  child: Text(
                    "Login Here",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AdminPage()));
                  },
                )
              ])
            ],
          ),
        ));
  }
}
