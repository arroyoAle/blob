import 'package:blob/blccard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BLOB but with blackjack insp"),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Container(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Row(
            children: [
              MyCard(),
           MyCard()
          ],
           ),
            Row(
              children: [
                MyCard(),
            MyCard()
            ],)
          ],
        ))
      )
    );
  }
}

