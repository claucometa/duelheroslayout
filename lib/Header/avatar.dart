import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      CircleAvatar(child: Text("img")),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.satellite),
              Text("nickname", style: TextStyle(color: Colors.white)),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.shuffle),
              Container(color: Colors.blue, height: 18, width: 90),
            ],
          )
        ],
      ),
    ]);
  }
}
