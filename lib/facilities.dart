import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:oracle_diamond_02/main.dart';

class Facilities extends StatefulWidget {
  Facilities({super.key});

  @override
  State<Facilities> createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage("assets/images/sportsbg.png"))),
    );

    return Scaffold(
        body: Image.asset(
          "assets/images/badminton.jpg",
          height: 300.0,
          width: size.width,
          fit: BoxFit.cover,
        ),
        backgroundColor: Color.fromARGB(255, 212, 210, 210),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 206, 84, 84),
          toolbarHeight: 90.0,
          leading: const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          title: const Text('Facilities'),
        ),
        floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          tooltip: 'Add', // used by assistive technologies
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => HomePage()));
          },
          backgroundColor: const Color.fromARGB(255, 206, 84, 84),
          child: const Text("Reserve",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.0,
              )),
        ));
  }
}
