import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/model/facilities.dart';

class FacilitiesDetailsScreen extends StatelessWidget {
  final Facilities facilities;

  FacilitiesDetailsScreen(this.facilities);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(facilities.name),
        backgroundColor: const Color.fromARGB(255, 206, 84, 84),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              facilities.ImageUrl,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                facilities.description,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
