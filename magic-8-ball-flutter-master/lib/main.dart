import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Magic8(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                ballNum = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$ballNum.png'),
          ),
        ),
      ],
    );
  }
}

class Magic8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue[600],
      ),
      body: Ball(),
    );
  }
}
