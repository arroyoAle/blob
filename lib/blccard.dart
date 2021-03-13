import 'package:flutter/material.dart';

class CardBack extends StatelessWidget {
  final suit;
  final colour;
  final number;

  CardBack({this.suit,this.colour,this.number});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.white,
          height: 100,
          width: 70,
          child: Image.asset('lib/images/back.png'),
        )
      )
    );
  }
}
