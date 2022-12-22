import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/admin/admin_manage_facilities/home.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              const Text(
                "Mon, 15/11/2022",
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                "Maintenance Scheduling",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Maintenance Facilities: ",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: "Badminton Court",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  hintText: 'Input Court name',
                ),
                keyboardType: TextInputType.name,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Court Number: ",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: "court 2",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  hintText: 'Input Court number',
                ),
                //
                keyboardType: TextInputType.number,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Maintenance Date: ",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: "15/11/2022 - Monday",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  hintText: 'Input Court date',
                ),
                //
                keyboardType: TextInputType.number,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Maintenance Time: ",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: "7:00 AM - 9:00 AM",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  hintText: 'Input Court time',
                ),
                //
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
