import 'package:blob/blccard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blob/scoreboard.dart';
import 'package:blob/util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isScoreboardVisible = false;
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
        child: Column(children: <Widget>[
          Container(child: Stack(
          // mainAxisAlignment: MainAxisAlignment.center,
            alignment: AlignmentDirectional.center,
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
              ],
            ),
          ],
          ),
          ),
          Stack(children: [
            Positioned(
              left: displayWidth(context) - 100,
              top: -19,
              child: TextButton(
                child: Text('Scoreboard', style: TextStyle(color: Colors.black)),
                onPressed: () {
                  setState(() {
                    _isScoreboardVisible = !_isScoreboardVisible;
                  });
                },
              ),
            ),
          ]
          ),
          scoreboard(_isScoreboardVisible)
        ],
        )
      )
    );
  }
}

