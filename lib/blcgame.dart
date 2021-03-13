import 'dart:math';

import 'package:blob/blccard.dart';
import 'package:blob/blccardtemplate.dart';
import 'package:blob/blcsuits.dart';
import 'package:flutter/animation.dart';
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
      body: Align(
        child: Container(child: Stack(
          alignment: Alignment.center,
          children: [
          //  Row(
          //    mainAxisAlignment: MainAxisAlignment.center,
          //   children: [CardTemplate(
          //     suit: heart(),
          //     colour: Colors.red,
          //     number: '7',
          //   ), CardTemplate(
          //     suit: diamonds(),
          //     colour: Colors.red,
          //     number: '7',
          //   )],
          //  ),
         Container(
           alignment: Alignment.center,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [Transform.rotate(angle: pi/2, child: CardBack(),),]
          ),
        ),
          Container(
            alignment: Alignment.bottomCenter,
           child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                getFlippingCard(heart(), Colors.red, 'A'),
                getFlippingCard(club(), Colors.black, '8'),
                getFlippingCard(spade(), Colors.black, '10')
              ],
             ),
            ),
         Container(
           alignment: Alignment.centerLeft,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.end,
             children: [Transform.rotate(angle: pi/2, child: CardBack(),)
              ],
             ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [Transform.rotate(angle: pi/2, child: CardBack(),)
              ],
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [Transform.rotate(angle: pi, child: CardBack(),)
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Transform.rotate(angle: pi/2, child: CardBack(),)
              ],
            ),
           ),
          ],
         ),
        ),
       ),
    );
  }

  Widget getFlippingCard(var suit, var colour, var number){
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()..setEntry(0, 1, 0)..rotateY(pi * _animation.value),
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

