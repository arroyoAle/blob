import 'dart:math';

import 'package:blob/blccard.dart';
import 'package:blob/blccardtemplate.dart';
import 'package:blob/blcplay.dart';
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
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //   Navigator.push(context, new MaterialPageRoute(builder: (context)=>GameView()));
      // },
      //   child: CardBack(),
      // ),
      body: Align( // this is the code for the start screen, with the formatting
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
            children: [
              ElevatedButton(
                  child: CardBack(),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    elevation: 0,
                  ),
                  onPressed:(){
                   Navigator.push(context, new MaterialPageRoute(builder: (context)=>GameView()));
                  }
                  ),
              //CardBack()
            ]
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
           padding: const EdgeInsets.all(15.0),
           alignment: Alignment.centerLeft,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.end,
             children: [Transform.rotate(angle: pi/2, child: CardBack(),)
              ],
             ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [Transform.rotate(angle: pi/2, child: CardBack(),)
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(2.0),
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [Transform.rotate(angle: pi, child: CardBack(),)
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
  // void _initGame() {
  //   //Number of rounds
  //   var round = 7;
  //   var noPlayers = 3;
  //
  //   //init player hands
  //   // player1Hand = [];
  //   // player2Hand = [];
  //   // player3Hand = [];
  //   // player4Hand = [];
  //   // player5Hand = [];
  //   // player6Hand = [];
  //   // played = [];
  //
  //   Random rand = Random();
  //   List<PlayingCard> deck = [];
  //   CardSuit.values.forEach((suit) {
  //     CardType.values.forEach((type) {
  //       deck.add(PlayingCard(
  //         cardType: type,
  //         cardSuit: suit,
  //         faceUp: false,
  //       ));
  //     });
  //   });
  //   for (int i = 0; i < round * noPlayers; i++) {
  //     int randNum = rand.nextInt(deck.length);
  //     if (noPlayers == 3){
  //
  //       if (i % noPlayers == 0) {
  //         PlayingCard card = deck[randNum];
  //         player3Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //       if (i % noPlayers == 1) {
  //         PlayingCard card = deck[randNum];
  //         player2Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //       if (i % noPlayers == 2) {
  //         PlayingCard card = deck[randNum];
  //         player1Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //
  //     } else if(noPlayers == 4){
  //
  //       if (i % noPlayers == 0) {
  //         PlayingCard card = deck[randNum];
  //         player4Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //       if (i % noPlayers == 1) {
  //         PlayingCard card = deck[randNum];
  //         player3Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //       if (i % noPlayers == 2) {
  //         PlayingCard card = deck[randNum];
  //         player2Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //       if (i % noPlayers == 3) {
  //         PlayingCard card = deck[randNum];
  //         player1Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //
  //     } else if(noPlayers == 5){
  //
  //       if (i % noPlayers == 0) {
  //         PlayingCard card = deck[randNum];
  //         player5Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //       if (i % noPlayers == 1) {
  //         PlayingCard card = deck[randNum];
  //         player4Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //       if (i % noPlayers == 2) {
  //         PlayingCard card = deck[randNum];
  //         player3Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //       if (i % noPlayers == 3) {
  //         PlayingCard card = deck[randNum];
  //         player2Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //       if (i % noPlayers == 4) {
  //         PlayingCard card = deck[randNum];
  //         player1Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //
  //     } else if(noPlayers == 6){
  //
  //       if (i % noPlayers == 0) {
  //         PlayingCard card = deck[randNum];
  //         player6Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //       if (i % noPlayers == 1) {
  //         PlayingCard card = deck[randNum];
  //         player5Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //       if (i % noPlayers == 2) {
  //         PlayingCard card = deck[randNum];
  //         player4Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //       if (i % noPlayers == 3) {
  //         PlayingCard card = deck[randNum];
  //         player3Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //       if (i % noPlayers == 4) {
  //         PlayingCard card = deck[randNum];
  //         player2Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //       if (i % noPlayers == 5) {
  //         PlayingCard card = deck[randNum];
  //         player1Hand.add(
  //           card
  //             ..opened = true
  //             ..faceUp = true,
  //         );
  //         deck.removeAt(randNum);
  //       }
  //
  //     }
  //   }
  //
  // }
}

