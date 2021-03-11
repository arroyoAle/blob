import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.white,
          height: 110,
          width: 70,
          child: Image.asset('lib/images/back.png'),
        )
      )
    );
  }
}
