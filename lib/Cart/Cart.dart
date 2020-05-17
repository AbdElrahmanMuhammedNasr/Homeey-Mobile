import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      
          body: Container(
              child:Column(
                children: <Widget>[
                  Text('Cart'),
                  RaisedButton(onPressed:()=> { Navigator.of(context).pushNamed('/login') }, child: Text('login'))
                ],
                
              ) 
                         
          ),

       
    )
    );
  }
}