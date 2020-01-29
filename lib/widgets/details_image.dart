import 'package:flutter/material.dart';

class DetailsImage extends StatelessWidget {
  final String urlImg;
  final String name;

  DetailsImage(this.urlImg, this.name);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.network(
              urlImg,
            ),
          ),
        ),
        Positioned(
          bottom: 10.0,
          child: Container(
            color: Color.fromRGBO(0, 0, 0, 0.6),
            width: 300,
            height: 50,
            child: Center(
              child: Text(
                name,
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
