import 'package:flutter/material.dart';
import 'game.dart';
import 'blcgame.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BLOB',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: game(),
      home: HomePage(),
      // home: MyHomePage(title: 'Card Package Test'),
    );
  }
}
