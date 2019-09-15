import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final String banner;
  final Function onPressed;
  final Color color;

  PrimaryButton(this.title, this.banner, this.color, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          border: Border.all(width: 2, color: Colors.black),
          gradient: RadialGradient(radius: .6, colors: [Colors.white, color])),
      child: Banner(
          message: banner,
          location: BannerLocation.topEnd,
          child: FlatButton(
            onPressed: onPressed,
            child: Text(title),
          )),
    );
  }
}
