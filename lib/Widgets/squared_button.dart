import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  final Widget chield;

  SquareButton(this.icon, this.onPressed, this.chield);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black26,
        border: Border.all(
            width: 2, color: Colors.black38, style: BorderStyle.solid),
      ),
      child: FlatButton(
        child: chield,
        onPressed: onPressed,
      ),
    );
  }
}
