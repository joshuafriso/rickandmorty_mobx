import 'package:flutter/material.dart';
import 'package:rickandmorty_mobx/widgets/details_image.dart';
import 'package:rickandmorty_mobx/widgets/details_row.dart';

class DetailsPage extends StatelessWidget {
  final Map details;

  DetailsPage(this.details);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          details["name"],
          overflow: TextOverflow.ellipsis,
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: Container(
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black26),
            child: Column(
              children: <Widget>[
                DetailsImage(details["image"], details["name"]),
                DetailsRow("Status", details["status"]),
                DetailsRow("Species", details["species"]),
                DetailsRow("Gender", details["gender"]),
                DetailsRow("Origin", details["origin"]["name"]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
