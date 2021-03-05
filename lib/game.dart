import 'package:flutter/material.dart';
import 'package:blob/util.dart';
import 'card.dart';



class game extends StatefulWidget {
  @override
  _gameState createState() => _gameState();
}

class _gameState extends State<game> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      alignment: Alignment.bottomCenter,
      child: new Stack(
        children: <Widget>[
          Positioned(
            top: displayHeight(context) / 1.25,
            left: displayWidth(context) / 2 - displayWidth(context) / 4,
            child: new Container(
            alignment: Alignment.center,
            width: displayWidth(context) / 2,
            height: displayHeight(context) / 2,
            child: card(),
          ),)
      ],),
    )
    ;
  }
}
