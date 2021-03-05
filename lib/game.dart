import 'dart:math';

import 'package:blob/cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blob/util.dart';
import 'card.dart';



class game extends StatefulWidget {
  @override
  _gameState createState() => _gameState();
}

class _gameState extends State<game> {
  //Player hands
  List<PlayingCard> player1Hand = [];
  List<PlayingCard> player2Hand = [];
  List<PlayingCard> player3Hand = [];
  List<PlayingCard> player4Hand = [];
  List<PlayingCard> player5Hand = [];
  List<PlayingCard> player6Hand = [];

  //Played Cards
  List<PlayingCard> played = [];

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

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class playArea extends StatefulWidget {
  @override
  _playAreaState createState() => _playAreaState();
}

class _playAreaState extends State<playArea> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

void _initGame() {
  //Number of rounds
  var round = 7;
  var noPlayers = 4;

  Random rand = Random();
  List<PlayingCard> deck = [];
  CardSuit.values.forEach((suit) {
    CardType.values.forEach((type) {
      deck.add(PlayingCard(
        cardType: type,
        cardSuit: suit,
        faceUp: false,
      ));
    });
  });
  for (int i = 0; i < round * noPlayers; i++) {
    int randNum = rand.nextInt(deck.length);
    if (noPlayers == 3){

    } else if(noPlayers == 4){

    } else if(noPlayers == 5){

    } else if(noPlayers == 6){

    }
  }

}