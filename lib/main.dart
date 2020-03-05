import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceFace(),
      ),
    ),
  );
}

class DiceFace extends StatefulWidget {
  @override
  _DiceStateFace createState() => _DiceStateFace();
}

class _DiceStateFace extends State<DiceFace> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row (
          children: <Widget>[
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    onPressed: () {
                      leftDiceNumber = 3;
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png'), 
                  ),
                )
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    onPressed: () {
                      rightDiceNumber = 4;
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png'), 
                  ),
                )
              )
          ])
      )
    );
  }

}

// class DicePage extends StatelessWidget {

  

  
//   void playDice() {
//     this.leftDiceNumber = new Random(6).toString();
//     this. = new Random(6).toString();
//   }

// }
