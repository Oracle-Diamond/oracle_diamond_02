import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:oracle_diamond_02/main.dart';
import 'package:oracle_diamond_02/assets.dart';
import 'package:oracle_diamond_02/page_badminton.dart';

class Facilities extends StatefulWidget {
  Facilities({super.key});

  @override
  _FacilitiesState createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  final List<String> _listItem = [
    badminton,
    tennis,
    pingpong,
    futsal,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 209, 195, 195),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.menu),
          title: Text("List of Facilities"),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("0")),
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/c/cb/UTM-LOGO-FULL.png'),
                          fit: BoxFit.cover)),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.4),
                              Colors.black.withOpacity(.2),
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Facilities",
                          style: TextStyle(
                              color: Color.fromARGB(255, 212, 210, 210),
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 206, 84, 84)),
                          child: Center(
                              child: Text(
                            "Reserve Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _listItem
                      .map((item) => Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(item),
                                      fit: BoxFit.cover)),
                              child: Transform.translate(
                                offset: Offset(50, -50),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 65, vertical: 63),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Icon(
                                    Icons.bookmark_border,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                ))
              ],
            ),
          ),
        ),
        floatingActionButton: Center(
          child: ElevatedButton(
            child: const Text('Reserve'),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => PageBadminton()));
            },
          ),
        ));
  }
}
