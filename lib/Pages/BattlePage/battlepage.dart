import 'package:flutter/material.dart';

import '../../tab_manager.dart';
import 'fixed_content.dart';
import 'scrollabe_content.dart';

class BattlePage extends PageBase {
  BattlePage(title, routeName, key) : super(title, routeName, key);

  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          ScrollableContent(),
          ...fixedContent(MediaQuery.of(context).size.width)
        ],
      ),
    );
  }
}
