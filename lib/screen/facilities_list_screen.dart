import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/model/facilities.dart';
import 'package:oracle_diamond_02/screen/facilities_details_screen.dart';

class FacilitiesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Facilities Available'),
          backgroundColor: const Color.fromARGB(255, 206, 84, 84),
        ),
        body: ListView.builder(
            itemCount: facilitiesList.length,
            itemBuilder: (context, index) {
              Facilities facilities = facilitiesList[index];
              return Card(
                  child: ListTile(
                iconColor: Color.fromARGB(255, 14, 13, 13),
                shape: BeveledRectangleBorder(
                    side: BorderSide(
                        color: Color.fromARGB(255, 241, 240, 240), width: 1)),
                trailing: Icon(Icons.arrow_forward_rounded),
                title: Text(facilities.name),
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.network(facilities.ImageUrl),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              FacilitiesDetailsScreen(facilities)));
                },
              ));
            }));
  }
}
