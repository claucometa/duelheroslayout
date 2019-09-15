import 'package:flutter/material.dart';

import 'tab_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: appTitle, home: TabManager());
  }
}
