import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

          body: Container(
              child:Column(
                children: <Widget>[
                  Text('Note'),
                  // RaisedButton(onPressed:()=> { Navigator.of(context).pushNamed('/login') }, child: Text('login'))
                ],
                
              ) 
                         
          ),

       

      
    )
    );
  }
}