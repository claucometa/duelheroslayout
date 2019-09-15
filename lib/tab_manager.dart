import 'package:flutter/material.dart';

import 'Pages/BattlePage/battlepage.dart';

class TabManager extends StatefulWidget {
  @override
  _TabManagerState createState() => _TabManagerState();
}

abstract class PageBase extends StatelessWidget {
  final Key key;
  final String title;
  final String routeName;

  PageBase(this.title, this.routeName, this.key) : super(key: key);
}

class _TabManagerState extends State<TabManager> {
  final List<PageBase> pages = [
    ShopPage("Shop", "1", ValueKey("3")),
    CardsPage("Cards", "2", ValueKey("2")),
    BattlePage("Battle", "3", ValueKey("1")),
    SocialPage("Social", "4", ValueKey("4")),
    EventsPage("Events", "5", ValueKey("5")),
  ];

  int _index = 2;

  void _setIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        initialIndex: 2,
        child: Scaffold(
          body: pages[_index],
          bottomNavigationBar: BottomNavigationBar(
              onTap: _setIndex,
              backgroundColor: Colors.black,
              currentIndex: _index,
              items: pages.map((item) {
                return BottomNavigationBarItem(
                    backgroundColor: Colors.orange,
                    icon: Icon(Icons.directions_car),
                    title: Text(item.title));
              }).toList()),
        ));
  }
}

class EventsPage extends PageBase {
  EventsPage(title, routeName, key) : super(title, routeName, key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(title),
        ),
        body: Icon(Icons.directions_bike));
  }
}

class SocialPage extends PageBase {
  SocialPage(title, routeName, key) : super(title, routeName, key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(title),
        ),
        body: Icon(Icons.directions_bike));
  }
}

class ShopPage extends PageBase {
  ShopPage(title, routeName, key) : super(title, routeName, key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(title),
        ),
        body: Icon(Icons.directions_bike));
  }
}

class CardsPage extends PageBase {
  CardsPage(title, routeName, key) : super(title, routeName, key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(title),
        ),
        body: Icon(Icons.directions_bike));
  }
}
