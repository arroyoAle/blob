import 'package:flutter/material.dart';
import 'package:blob/hands.dart';
import 'package:blob/cards.dart';

class TransformedCard extends StatefulWidget {
  final PlayingCard playingCard;
  final double transformDistance;
  final int transformIndex;
  final int handIndex;
  final List<PlayingCard> playedCards;

  TransformedCard({
    @required this.playingCard,
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
