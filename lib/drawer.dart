import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'screens/item.dart';

class DrawerNavigation {
  // TODO - Prevent navigation from stacks

  List<Widget> _items(context) {
    List<Widget> items = new List();
    items.add(new ListTile(
      leading: const Icon(Icons.event_seat),
      title: new Text(HomeScreen.pageTitle),
      onTap: () {
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
    ));
    items.add(new ListTile(
      leading: const Icon(Icons.event_seat),
      title: new Text(ItemScreen.pageTitle),
      onTap: () {
        Navigator.pushNamed(context, ItemScreen.routeName);
      },
    ));

    return items;
  }

  Drawer getDrawer(context) {
    List<Widget> navigations = [];
    // navigations.add(_header());

    for (Widget item in _items(context)) {
      navigations.add(item);
    }

    ListView listView = new ListView(
      children: navigations,
    );
    Drawer drawer = new Drawer(
      child: listView,
    );
    return drawer;
  }
}
