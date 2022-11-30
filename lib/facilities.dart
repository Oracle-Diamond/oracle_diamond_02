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
    Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage("assets/images/sportsbg.png"))),
    );

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 206, 84, 84),
        toolbarHeight: 200.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
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
          child: const Text('Info')),

      //return Container(
      //width: 400.0,
      //height: 0.5,
      //color: Color.fromARGB(255, 180, 180, 180),
      //child: Center(
      //child: Text(
      //'Welcome, Admin',
      //style: TextStyle(color: Colors.white, fontSize: 16.0),
      //)),
      //body: (const SizedBox(
      //width: 400.0,
      //height: 150.0,
      //child: DecoratedBox(decoration: const BoxDecoration(color: Colors.red)),
      //child: Center(child: Text 'Welcome')
      //)),
    );
  }
}
