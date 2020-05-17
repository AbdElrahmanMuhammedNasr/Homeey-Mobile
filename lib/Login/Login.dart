import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              child:Column(
                children: <Widget>[
                  Text('login'),
                  FlatButton(onPressed:()=> { Navigator.of(context).pushNamed('/home') }, child: Text('home'))
                ],
              )            
          ),
      ),
      
      
    );
  }
}