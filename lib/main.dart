import 'package:flutter/material.dart';
import 'game.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLOB',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: game(),
      // home: MyHomePage(title: 'Card Package Test'),
    );
  }
}
