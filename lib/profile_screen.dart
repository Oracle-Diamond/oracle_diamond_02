import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/facilitiesDetails.dart';
import 'package:oracle_diamond_02/DetailsDataModel.dart';
import 'package:oracle_diamond_02/facilitiesDetails.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  static List<String> facilitiesname = [
    'Badminton',
    'Pingpong',
    'Tennis',
    'Futsal',
  ];

  final List<FacilitiesDataModel> facilities = List.generate(
      facilitiesname.length,
      (index) => FacilitiesDataModel('${facilitiesname[index]}', '${[index]}',
          '${facilitiesname[index]} Description...'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile Screen'),
        ),
        body: ListView.builder(
            itemCount: facilities.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(facilities[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(facilities[index].ImageUrl),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FacilitiesDetails(
                              index: index,
                              detailsDataModel: facilities,
                            )));
                  },
                ),
              );
            }));
  }
}
