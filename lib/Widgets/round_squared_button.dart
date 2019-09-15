import 'package:flutter/material.dart';

class RoundedSquareButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundedSquareButton(this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black26,
          border: Border.all(
              width: 2, color: Colors.white24, style: BorderStyle.solid),
          borderRadius: new BorderRadius.all(Radius.circular(6.0))),
      width: 44,
      height: 44,
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }
}
