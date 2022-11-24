import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 206, 84, 84),
        toolbarHeight: 200.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Welcome, Admin'), 
      ),

      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.add),
      ),
      
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
