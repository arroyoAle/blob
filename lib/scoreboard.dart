import 'package:flutter/material.dart';
import 'package:blob/util.dart';

class scoreboard extends StatelessWidget {
  scoreboard(this._isScoreboardVisible);
   bool _isScoreboardVisible;
  final int numPlayers = 6;

  @override
  Widget build(BuildContext context) {
    List<Container> rows = [];
    // List<Container> rows = [];


    rows.add(Container(
      height: 200,
      child: Text('Round', style: TextStyle(fontSize: 12),),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
      ),
    ));

    for (int i = 1; i <= numPlayers; i++) {
      rows.add(Container(
        child: Text(
            'Player' + i.toString(),
            style: _isScoreboardVisible ? TextStyle(
                color: Colors.black, fontSize: 10) : TextStyle(
                color: Colors.transparent, fontSize: 10)
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black)
        ),
      ));
    }




    for(int i = 7; i > 0; i--) {
      rows.add(Container(
        alignment: AlignmentDirectional.topCenter,
        child: Text(i.toString(), style: TextStyle(fontSize: 10)),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black)
        ),
      ));
      for(int j = 0; j < numPlayers; j++){
        rows.add(Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
          ),
        ));
      }
    }

    for(int i = 1; i < 8; i++) {
      rows.add(Container(
        alignment: Alignment.topCenter,
        child: Text(i.toString(), style: TextStyle(fontSize: 10)),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black)
        ),
      ));
      for(int j = 0; j < numPlayers; j++){
        rows.add(Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
          ),
        ));
      }
    }

    rows.add(Container(
      child: Text('Blobs', style: TextStyle(fontSize: 12),),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
      ),
    ));

    for(int j = 0; j < numPlayers; j++){
      rows.add(Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black)
        ),
      ));
    }

    rows.add(Container(
        child: Text('Tricks', style: TextStyle(fontSize: 12),),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
      ),
    ));

    for(int j = 0; j < numPlayers; j++){
      rows.add(Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black)
        ),
      ));
    }


    // rows.add(TableRow(
    //     children: <Widget>[
    //       TableCell(
    //         child: RotatedBox(quarterTurns: 1, child: Text(' Round ', style: TextStyle(fontSize: 12))),
    //       ),
    //
    //       TableCell(
    //         child: Container(alignment: AlignmentDirectional.bottomCenter, child: Text('7', style: TextStyle(fontSize: 10))),
    //       ),
    //
    //       Text('6', style: TextStyle(fontSize: 10)),
    //       Text('5', style: TextStyle(fontSize: 10)),
    //       Text('4', style: TextStyle(fontSize: 10)),
    //       Text('3', style: TextStyle(fontSize: 10)),
    //       Text('2', style: TextStyle(fontSize: 10)),
    //       Text('1', style: TextStyle(fontSize: 10)),
    //       Text('2', style: TextStyle(fontSize: 10)),
    //       Text('3', style: TextStyle(fontSize: 10)),
    //       Text('4', style: TextStyle(fontSize: 10)),
    //       Text('5', style: TextStyle(fontSize: 10)),
    //       Text('6', style: TextStyle(fontSize: 10)),
    //       Text('7', style: TextStyle(fontSize: 10)),
    //       RotatedBox(quarterTurns: 1, child: Text(' Blobs ', style: TextStyle(fontSize: 12))),
    //       RotatedBox(quarterTurns: 1, child: Text(' Tricks ', style: TextStyle(fontSize: 12))),
    //     ]
    // ),);

    return Center (
        child: AnimatedContainer (
            duration: Duration(seconds: 1),
            color: Colors.white,
            height: _isScoreboardVisible ? (displayHeight(context) * 0.8) : 0.0,
            width: _isScoreboardVisible ? (displayWidth(context) * 0.9) : 0.0,
            child: Stack(children: <Widget>[
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(2),
                childAspectRatio: 1.5,
                crossAxisCount: numPlayers + 1,
                children: rows,
              )
  //             Table(
  //                 border: _isScoreboardVisible? TableBorder.all(color: Colors.black) : TableBorder.all(color: Colors.transparent),
  //                 children: rows
  // //       for(int j = 0; j < numPlayers; j++){
  // //     TableRow(
  // //         children: rows[j]
  // //     ),
  // // }
  //             ),
              // Positioned(child: IconButton(
              //   icon: const Icon(Icons.close, ),
              //   onPressed: null )
              // ),
            ]
            )
        )
    );
  }
}
