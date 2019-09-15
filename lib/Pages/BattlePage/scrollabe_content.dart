import 'package:flutter/material.dart';
import '../../Widgets/primary_button.dart';

class ScrollableContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/adventure.jpg"),
                  fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 400,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: new BorderRadius.all(Radius.circular(8.0))),
                height: 45,
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.movie),
                    Text("Trophies", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  PrimaryButton("Challenge", "PVE", Colors.blue, () {}),
                  SizedBox(width: 10),
                  PrimaryButton("Battle", "PVP", Colors.orange, () {}),
                ],
              ),
              Container(
                height: 180,
              ),
            ],
          )),
      Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/adventure.jpg"),
                  fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Flexible(flex: 1, child: Container()),
              Flexible(
                  flex: 1,
                  child:
                      PrimaryButton("Adventure", "PVE", Colors.orange, () {})),
            ],
          )),
    ]);
  }
}
