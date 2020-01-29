import 'package:flutter/material.dart';

class DetailsRow extends StatelessWidget {
  final String type;
  final String desc;

  DetailsRow(this.type, this.desc);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(child: Text(type.toUpperCase())),
          Flexible(
              child: Text(
            desc,
            style: TextStyle(color: Color(0xffFF9800), fontSize: 16.0),
            textAlign: TextAlign.end,
          )),
        ],
      ),
    );
  }
}
