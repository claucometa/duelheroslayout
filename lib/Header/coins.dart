import 'package:flutter/material.dart';

class Coins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(Icons.movie),
        Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black54, Colors.black26])),
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "100",
                  style: TextStyle(color: Colors.white),
                )),
            width: 60),
        Icon(Icons.movie),
      ],
    );
  }
}
