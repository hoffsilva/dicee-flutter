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
                      setState(() {
                        playDices();
                      });
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
                      setState(() {
                        playDices();
                      });
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png'), 
                  ),
                )
              )
          ])
      )
    );
  }

  playDices() {
    leftDiceNumber = Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(6)+1;
  }

}