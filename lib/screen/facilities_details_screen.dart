import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/main.dart';
import 'package:oracle_diamond_02/model/facilities.dart';

class FacilitiesDetailsScreen extends StatelessWidget {
  final Facilities facilities;

  FacilitiesDetailsScreen(this.facilities);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              foregroundDecoration: BoxDecoration(color: Colors.black26),
              height: 400,
              child: Image.network(facilities.ImageUrl, fit: BoxFit.cover)),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 250),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 16.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Text(
                            "Reserve Now",
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => BookingCalendarDemoApp()));
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Text(
                        facilities.name.toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18.0),
                      ),
                      const SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          facilities.description,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
