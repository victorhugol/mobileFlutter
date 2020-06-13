import 'package:flutter/material.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
    	return MaterialApp(
        debugShowCheckedModeBanner: false,
      	home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[300],
            title : Text(
              "Cartão de Visita",
              style: TextStyle(
                fontFamily: "Roboto-Thin"

              ),
              )
          ),
        	backgroundColor : Colors.blueGrey,
        	body : SafeArea(
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height : 110
                  ),
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("images/victor.jpg"),
                  ),
                  Text(
                    'Victor Hugo',
                    style: TextStyle(
                      fontFamily : 'MeriendaOne',
                      fontSize: 40,
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Computer Science Student",
                    style: TextStyle(
                      fontFamily : 'Roboto-MediumItalic',
                      fontSize: 14,
                      color: Colors.white
                    ),
                    ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width : 300,
                    height : 50,
                    color : Colors.white,

                    child: Row(
                      children : <Widget>[
                        SizedBox(width: 10,),
                        Icon(
                          Icons.message,
                          color: Colors.blueGrey,
                        ),
                        SizedBox(width: 40,),
                        Center(
                          child : MaterialButton(onPressed:(){ 
                          FlutterOpenWhatsapp.sendSingleMessage("+5585994378285", "Olá");
                          },
                            child: Text(
                              "+85 9 9437 8285",
                              style: TextStyle(
                                color : Colors.blueGrey,
                                fontSize: 17
                              )
                            ),
                          )
                        ),
                      ]
                    ),

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width : 300,
                    height : 50,
                    color : Colors.white,
                  child: Row(
                      children : <Widget>[
                        SizedBox(width: 10,),
                        Icon(
                          Icons.email,
                          color: Colors.blueGrey,
                        ),
                        SizedBox(width: 40,),
                        Text(
                          "victorsilva698@usp.br",
                          style: TextStyle(
                            color : Colors.blueGrey,
                            fontSize: 17
                          )
                        ),
                      ]
                    ),
                  )
                ],
              ),
            ),
				  )
        )
      );
  	}
}