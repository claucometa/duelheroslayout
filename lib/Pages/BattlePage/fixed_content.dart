import 'package:flutter/material.dart';

import '../../Header/avatar.dart';
import '../../Header/coins.dart';
import '../../Header/diamonds.dart';
import '../../Widgets/round_squared_button.dart';
import '../../Widgets/squared_button.dart';

List<Positioned> fixedContent(double maxWidth) {
  return [
    drawHeader(maxWidth),
    drawButtons1(maxWidth),
    drawButtons2(maxWidth),
    drawButtons3(maxWidth),
    drawButtons4(maxWidth),
  ];
}

drawButtons4(double maxWidth) {
  return Positioned(
    top: 300,
    left: 20,
    right: 20,
    child: Container(
      width: maxWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RoundedSquareButton(Icons.movie, () {}),
          RoundedSquareButton(Icons.movie, () {})
        ],
      ),
    ),
  );
}

drawButtons3(double maxWidth) {
  return Positioned(
    top: 250,
    left: 20,
    right: 20,
    child: Container(
      width: maxWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RoundedSquareButton(Icons.movie, () {}),
          RoundedSquareButton(Icons.movie, () {})
        ],
      ),
    ),
  );
}

drawButtons2(double maxWidth) {
  return Positioned(
    top: 110,
    left: 10,
    right: 10,
    child: Container(
      width: maxWidth,
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 5,
            child: SquareButton(Icons.movie, () {}, Text("XX")),
          ),
          SizedBox(width: 3),
          Flexible(
            flex: 1,
            child: SquareButton(Icons.movie, () {}, Text("XX")),
          ),
          SizedBox(width: 3),
          Flexible(
            flex: 1,
            child: SquareButton(Icons.movie, () {}, Text("XX")),
          ),
        ],
      ),
    ),
  );
}

drawHeader(double maxWidth) {
  return Positioned(
    top: 10,
    left: 10,
    right: 10,
    child: Container(
      width: maxWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Avatar(),
          Coins(),
          Diamonds(),
        ],
      ),
    ),
  );
}

drawButtons1(double maxWidth) {
  return Positioned(
    top: 70,
    left: 10,
    right: 10,
    child: Container(
      width: maxWidth,
      height: 40,
      child: Row(
        children: <Widget>[
          Flexible(
              flex: 3,
              child: SquareButton(
                  Icons.movie,
                  () {},
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.shuffle,
                        color: Colors.white,
                      ),
                      Text(
                        "Quests",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ))),
          SizedBox(width: 3),
          Flexible(flex: 7, child: SquareButton(Icons.movie, () {}, Text("XX")))
        ],
      ),
    ),
  );
}
