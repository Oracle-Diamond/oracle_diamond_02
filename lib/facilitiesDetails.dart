import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/assets.dart';
import 'package:oracle_diamond_02/DetailsDataModel.dart';

class FacilitiesDetails extends StatefulWidget {
  final List<FacilitiesDataModel> detailsDataModel;
  int index;
  FacilitiesDetails(
      {Key? key, required this.index, required this.detailsDataModel})
      : super(key: key);

  @override
  State<FacilitiesDetails> createState() => _FacilitiesState();
}

class _FacilitiesState extends State<FacilitiesDetails> {
  final List<String> _listItem = [
    badminton,
    tennis,
    pingpong,
    futsal,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.detailsDataModel[widget.index].name),
      ),
      body: Column(
        children: [
          Image.network(widget.detailsDataModel[widget.index].ImageUrl),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.detailsDataModel[widget.index].desc,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                heroTag: "f1",
                onPressed: () {
                  setState(() {
                    if (widget.index != 0) {
                      widget.index--;
                    }
                  });
                },
                child: Icon(Icons.arrow_back_ios),
              ),
              FloatingActionButton(
                heroTag: "f2",
                onPressed: () {
                  setState(() {
                    if (widget.index != widget.detailsDataModel.length - 1) {
                      widget.index++;
                    }
                  });
                },
                child: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
