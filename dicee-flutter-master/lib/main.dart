import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[200],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueGrey[600],
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice = 1;
  var rightDice = 1;
  void randomGenerator(){
    leftDice = Random().nextInt(6)+ 1;
    rightDice = Random().nextInt(6)+ 1;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  randomGenerator();
                });
              },
              child: Image.asset('images/dice$leftDice.png'),
          ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  randomGenerator();
                });
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
        ]),
      ),
    );
  }
}