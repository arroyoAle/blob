import 'dart:math';

import 'package:blob/cards.dart';
import 'package:blob/hands.dart';
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
  void _initState(){
    super.initState();
    _initGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("BLOB"),
        elevation: 0.0,
        backgroundColor: Colors.green,
        actions: <Widget>[
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            splashColor: Colors.white,
            onTap: () {
              _initGame();
            },
          ),
        ],
      ),
      body: Container(
          padding: const EdgeInsets.all(8.0),
          height: 500.0,
           width: 500.0,
        // child: Stack(
        //   Draggable<Map>(
        //     child:_buildFaceUpCard(),
        //     feedback: PlayerHand,
        //     cards: widget.attachedcards
        //   )
        //   children: <Widget>[
        //
        //   ]
        //)
      )
    );
  }

  Widget _buildPlayedDeck(){

  }
  Widget _currentPlayerHand(){
    player1Hand;
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

  void _initGame() {
    //Number of rounds
    var round = 7;
    var noPlayers = 3;

    //init player hands
    // player1Hand = [];
    // player2Hand = [];
    // player3Hand = [];
    // player4Hand = [];
    // player5Hand = [];
    // player6Hand = [];
    // played = [];

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

        if (i % noPlayers == 0) {
          PlayingCard card = deck[randNum];
          player3Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }
        if (i % noPlayers == 1) {
          PlayingCard card = deck[randNum];
          player2Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }
        if (i % noPlayers == 2) {
          PlayingCard card = deck[randNum];
          player1Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }

      } else if(noPlayers == 4){

        if (i % noPlayers == 0) {
          PlayingCard card = deck[randNum];
          player4Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }
        if (i % noPlayers == 1) {
          PlayingCard card = deck[randNum];
          player3Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }
        if (i % noPlayers == 2) {
          PlayingCard card = deck[randNum];
          player2Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }
        if (i % noPlayers == 3) {
          PlayingCard card = deck[randNum];
          player1Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }

      } else if(noPlayers == 5){

        if (i % noPlayers == 0) {
          PlayingCard card = deck[randNum];
          player5Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }
        if (i % noPlayers == 1) {
          PlayingCard card = deck[randNum];
          player4Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }
        if (i % noPlayers == 2) {
          PlayingCard card = deck[randNum];
          player3Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }
        if (i % noPlayers == 3) {
          PlayingCard card = deck[randNum];
          player2Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }
        if (i % noPlayers == 4) {
          PlayingCard card = deck[randNum];
          player1Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }

      } else if(noPlayers == 6){

        if (i % noPlayers == 0) {
          PlayingCard card = deck[randNum];
          player6Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }
        if (i % noPlayers == 1) {
          PlayingCard card = deck[randNum];
          player5Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }
        if (i % noPlayers == 2) {
          PlayingCard card = deck[randNum];
          player4Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }
        if (i % noPlayers == 3) {
          PlayingCard card = deck[randNum];
          player3Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }
        if (i % noPlayers == 4) {
          PlayingCard card = deck[randNum];
          player2Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }
        if (i % noPlayers == 5) {
          PlayingCard card = deck[randNum];
          player1Hand.add(
            card
              ..opened = true
              ..faceUp = true,
          );
          deck.removeAt(randNum);
        }

      }
    }

  }


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
