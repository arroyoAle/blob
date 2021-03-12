import 'dart:math';

import 'package:blob/blccard.dart';
import 'package:blob/blccardtemplate.dart';
import 'package:blob/blcsuits.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  AnimationController _animationController;
  Animation<double> _animation;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(duration: Duration(milliseconds: 200), vsync: this);

    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)..addListener(() {
      setState(() {});
    })..addStatusListener((status) {_animationStatus = status;});
  }

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [CardTemplate(
              suit: heart(),
              colour: Colors.red,
              number: '7',
            ), CardTemplate(
              suit: diamonds(),
              colour: Colors.red,
              number: '7',
            )],
           ),
           Transform.rotate(angle: pi/2, child: CardBack(),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CardTemplate(
                suit: club(),
                colour: Colors.black,
                number: '7',
              ), CardTemplate(
                suit: spade(),
                colour: Colors.black,
                number: '7',
              ),
                getFlippingCard(spade(), Colors.black, '7'),
              ],
            )
          ],
        ))
      )
    );
  }

  Widget getFlippingCard(var suit, var colour, var number){
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()..setEntry(3, 2, 0.002)..rotateY(pi * _animation.value),
      child: GestureDetector(
        onTap: () {
          if(_animationStatus == AnimationStatus.dismissed){
            _animationController.forward();
          }
          else{
            _animationController.reverse();
          }
        },
        child: _animation.value >= 0.2 ? CardBack() : CardTemplate(
          suit: suit,
          colour: colour,
          number: number,
        ),
      ),
    );
  }
}

