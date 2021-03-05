

import 'package:flutter/material.dart';
// import 'package:playing_cards/playing_cards.dart';
import 'package:blob/util.dart';
import 'package:blob/cards.dart';
import 'dart:math';
import 'package:flip_card/flip_card.dart';

class card extends StatefulWidget {
  @override
  _cardState createState() => _cardState();
}

class _cardState extends State<card> {
  List<card> hand;

  ShapeBorder shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(color: Colors.black, width: 1));

  // PlayingCardViewStyle myStyle = PlayingCardViewStyle(suitStyles: {
  //   Suit.spades: SuitStyle(
  //       builder: (context) => FittedBox(
  //         fit: BoxFit.fitHeight,
  //         child: Text(
  //           "♠",
  //           style: TextStyle(fontSize: 500),
  //         ),
  //       ),
  //       style: TextStyle(color: Colors.grey[800])),
  //   Suit.hearts: SuitStyle(
  //       builder: (context) => FittedBox(
  //         fit: BoxFit.fitHeight,
  //         child: Text(
  //           "♥",
  //           style: TextStyle(fontSize: 500),
  //         ),
  //       ),
  //       style: TextStyle(color: Colors.red)),
  //   Suit.diamonds: SuitStyle(
  //       builder: (context) => FittedBox(
  //         fit: BoxFit.fitHeight,
  //         child: Text(
  //           "♦",
  //           style: TextStyle(fontSize: 500),
  //         ),
  //       ),
  //       style: TextStyle(color: Colors.red)),
  //   Suit.clubs: SuitStyle(
  //       builder: (context) => FittedBox(
  //         fit: BoxFit.fitHeight,
  //         child: Text(
  //           "♣",
  //           style: TextStyle(fontSize: 500),
  //         ),
  //       ),
  //       style: TextStyle(color: Colors.grey[800])),
  // });

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Text("HELLO"),
    );
    // final children = <PlayingCardView>[];
    // Suit suit;
    // CardValue value;
    // var noCards = 7;
    // List<PlayingCard> deck = standardFiftyTwoCardDeck();
    // for(var i = 0; i < noCards; i++){
    //   var index = Random().nextInt(deck.length);
    //   suit = deck[index].suit;
    //   value = deck[index].value;
    //   deck.removeAt(index);
    //     children.add(new PlayingCardView(
    //       card: PlayingCard(suit, value),
    //       showBack: false,
    //       elevation: 3.0,
    //       shape: shape,
    //       style: myStyle,
    //       ),
    //     );
    // }
    // return GestureDetector(
    //   onTap: () {
    //     if(children[1].showBack == false) {
    //       children[1] = PlayingCardView(
    //         card: children[1].card,
    //         showBack: true,
    //         elevation: 3.0,
    //         shape: shape,
    //         style: myStyle,
    //       );
    //     } else {
    //       children[1] = PlayingCardView(
    //         card: children[1].card,
    //         showBack: false,
    //         elevation: 3.0,
    //         shape: shape,
    //         style: myStyle,
    //       );
    //     }
    //     },
    //
    //   child: FlatCardFan(
    //     children: children
    //     ,),
    // );




    // return Scaffold(


    // body: Column(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: [
    //     PlayingCardView(
    //       card: PlayingCard(suit, value),
    //       style: myStyle,
    //     ),Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: [
    //         DropdownButton<Suit>(
    //           value: suit,
    //             items: Suit.values.map(
    //                     (s) => DropdownMenuItem(
    //                       value: s,
    //                         child: Text(s.toString().substring(5)[0].toUpperCase() + s.toString().substring(6))
    //                     ),
    //             ).toList(),
    //           onChanged: (val) {
    //             setState(() {
    //               suit = val;
    //             });
    //           }),
    //         DropdownButton<CardValue>(
    //           value: value,
    //             items: CardValue.values.map(
    //                     (s) => DropdownMenuItem(
    //                         value: s,
    //                         child: Text(s.toString().substring(10)[0].toUpperCase() + s.toString().substring(11))
    //                     )
    //             ).toList(),
    //           onChanged: (val) {
    //             setState(() {
    //               value = val;
    //             });
    //           },
    //         ),
    //       ],
    //     )
    //   ],
    // )

    // );
  }
}
