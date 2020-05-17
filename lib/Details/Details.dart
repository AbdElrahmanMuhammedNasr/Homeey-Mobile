import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(


          body: Container(
              child:Column(
                children: <Widget>[
                  Text('details'),
                  RaisedButton(onPressed:()=> { Navigator.of(context).pushNamed('/login') }, child: Text('login'))
                ],
                
              ) 
                         
          ),


      
    )
    );
  }
}