import 'dart:math';

import 'package:blob/blccard.dart';
import 'package:blob/blccardtemplate.dart';
import 'package:blob/blcsuits.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Screen"),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      backgroundColor: Colors.green,
    );
  }
}
