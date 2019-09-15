import 'package:flutter/material.dart';

class Diamonds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text("100", style: TextStyle(color: Colors.white)),
        Icon(Icons.import_contacts),
      ],
    );
  }
}
