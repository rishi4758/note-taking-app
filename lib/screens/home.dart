import 'package:flutter/material.dart';

import '../drawer.dart';

class HomeScreen extends StatefulWidget {
  static String pageTitle = "Home";
  static String routeName = "/";

  @override
  State<StatefulWidget> createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Drawer drawer = new DrawerNavigation().getDrawer(context);

    return new Scaffold(
      drawer: drawer,
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to the app",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
            FlightImageAsset(),
          ],
        ),
      ),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Image(image: AssetImage('images/back2.jpeg')));
  }
}
