import 'package:flutter/material.dart';
import 'package:blob/hands.dart';
import 'package:blob/cards.dart';

class TransformedCard extends StatefulWidget {
  PlayingCard card;
  double transformDistance;
  int transformIndex;
  int handIndex;
  List<PlayingCard> playedCards;

  TransformedCard({
    @required this.card,
    this.transformDistance = 15.0,
    this.transformIndex = 0,
    this.handIndex,
    this.playedCards,
  });

  @override
  _TransformedCardState createState() => _TransformedCardState();
}

class _TransformedCardState extends State<TransformedCard> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
