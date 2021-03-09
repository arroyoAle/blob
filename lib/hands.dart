import 'package:blob/card.dart';
import 'package:blob/cards.dart';
import 'package:flutter/material.dart';

typedef Null CardAcceptCallback(List<PlayingCard> card, int fromIndex);

class cardHand extends StatefulWidget {

  List<PlayingCard> cards;

  CardAcceptCallback onCardsAdded;

  int handIndex;

  cardHand({
    @required this.cards,
    @required this.onCardsAdded,
    @required this.handIndex
  });

  @override
  _cardHandState createState() => _cardHandState();
}

class _cardHandState extends State<cardHand> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.topCenter,
      height: 13.0 * 15.0,
      width: 70.0,
      margin: EdgeInsets.all(2.0),
      child: DragTarget<Map>(
        builder: (context, listOne, listTwo) {
          return Stack(
            children: widget.cards.map((card) {
              int index = widget.cards.indexOf(card);
              return TransformedCard(
                playingCard: card,
                transformIndex: index,
                attachedCards: widget.cards.sublist(index, widget.cards.length),
                columnIndex: widget.handIndex,
              );
            }).toList(),
          );
        },
        onWillAccept: (value) {
          // If empty, accept
          if (widget.cards.length == 0) {
            return true;
          }

          // Get dragged cards list
          List<PlayingCard> draggedCards = value["cards"];
          PlayingCard firstCard = draggedCards.first;
          return true;
        },
        onAccept: (value) {
          widget.onCardsAdded(
            value["cards"],
            value["fromIndex"],
          );
        },
      ),
    );
  }
}
