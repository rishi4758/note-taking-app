import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

// Added .dart files
import 'screens/home.dart';
import 'screens/item.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    var routes = <String, WidgetBuilder>{
      '/item': (BuildContext context) => new ItemScreen(),
    };
    return new MaterialApp(
      title: 'course project app',
      home: new HomeScreen(),
      theme: new ThemeData(
        primaryColor: Colors.blue[400],
      ),
      routes: routes,
    );
  }
}
