import 'dart:math';

import 'package:blob/blcsuits.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardTemplate extends StatelessWidget {
  final suit;
  final colour;
  final number;

  CardTemplate({this.suit,this.colour,this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.all(5),
              color: Colors.white,
              height: 100,
              width: 70,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                  children: [
                    Text(number,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                  ),
                    suit,
                    Transform.rotate(
                        angle: pi,
                      child: Row(
                        children: [
                          Text(number,
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            )
        )
      );
    }
  }
