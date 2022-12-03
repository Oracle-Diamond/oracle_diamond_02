import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/facilitiesDetails.dart';

class PageBadminton extends StatefulWidget {
  const PageBadminton({super.key});

  @override
  State<PageBadminton> createState() => _PageBadmintonState();
}

class _PageBadmintonState extends State<PageBadminton> {
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
        title: const Text('Badminton'),
      ),
    );
  }
}
