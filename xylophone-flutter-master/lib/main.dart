import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bisna Keyboard"),
          backgroundColor: Colors.black,
        ),
        body: Keys(),
      ),
    );
  }
}

class Keys extends StatefulWidget {
  @override
  _KeysState createState() => _KeysState();
}

class _KeysState extends State<Keys> {

  Expanded genKey({Color color, int numSound}){
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.symmetric(),
        color: color,
        onPressed: (){
          final player = AudioCache();
          player.play('note$numSound.wav');
        }, 
        child :null
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          genKey(
            color: Colors.red,
            numSound: 1,
          ),
          genKey(
            color: Colors.lightBlue,
            numSound: 2,
          ),
          genKey(
            color: Colors.yellow,
            numSound: 3,
          ),
          genKey(
            color: Colors.green,
            numSound: 4,
          ),
          genKey(
            color: Colors.white,
            numSound: 5,
          ),
          genKey(
            color: Colors.blueGrey,
            numSound: 6,
          ),

        ],
      ),
    );
  }
}
