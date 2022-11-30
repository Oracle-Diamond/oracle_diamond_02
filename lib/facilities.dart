import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:oracle_diamond_02/main.dart';
import 'package:oracle_diamond_02/widgets/listfacilities.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> facilitiesListBack = [
  'assets/images/futsal.jpg',
  'assets/images/pinpong.jpg',
  'assets/images/tennis.jpg',
  'assets/images/badminton.jpg',
];
final List<Map<String, dynamic>> facilitiesList = [
  {
    'facilities': 'Futsal',
    'poster': 'assets/images/futsal.jpg',
  },
  {
    'facilities': 'Pingpong',
    'poster': 'assets/images/pinpong.jpg',
  },
  {
    'facilities': 'Tennis',
    'poster': 'assets/images/tennis.jpg',
  },
  {
    'facilities': 'Badminton',
    'poster': 'assets/images/badminton.jpg',
  },
];

final List<Widget> imageSliders = facilitiesList
    .map((item) => Container(child: ListFacilities(item)))
    .toList();

class Facilities extends StatefulWidget {
  Facilities({super.key});

  @override
  State<Facilities> createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  CarouselController buttonCarouselController = CarouselController();
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage("assets/images/sportsbg.png"))),
    );

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                controller: _scrollController,
                reverse: true,
                scrollDirection: Axis.horizontal,
                itemCount: facilitiesListBack.length,
                itemBuilder: (BuildContext context, int index) {
                  return new Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: new BoxDecoration(
                        color: Colors.black12,
                        image: new DecorationImage(
                          image: new ExactAssetImage(facilitiesListBack[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: new Container(
                        decoration: new BoxDecoration(
                            color: Colors.black.withOpacity(0.6)),
                      ));
                }),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              aspectRatio: 2,
              carouselController: buttonCarouselController,
              viewportFraction: 0.68,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              onScrolled: (data) {
                _scrollController.animateTo(
                  ((data * 125 / imageSliders.length) / 100) *
                      _scrollController.position.maxScrollExtent,
                  curve: Curves.ease,
                  duration: const Duration(milliseconds: 100),
                );
              },
            ),
            items: imageSliders,
          ),
        ],
      ),
      floatingActionButton: ButtonTheme(
        height: 45,
        minWidth: 280,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Colors.amber[700],
          textColor: Colors.black, // used by assistive technologies
          onPressed: () {
            print(_scrollController.position.maxScrollExtent);
          },
          child: Text("Book now".toUpperCase(), style: TextStyle(fontSize: 14)),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 206, 84, 84),
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
    );
  }
}
