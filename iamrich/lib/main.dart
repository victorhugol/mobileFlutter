//
//@author : Victor Hugo Oliveira
//29-04-2020

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black87,
          appBar: AppBar(
            title : Text("I am Rich"),
            backgroundColor: Colors.blueGrey,
          ),
          body: Center(
                      child: Image(
              image: AssetImage('images/diamond.png'),
            ),
          ),
        ),
      ),
    );
