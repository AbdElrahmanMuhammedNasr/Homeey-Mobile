import 'package:flutter/material.dart';
import 'package:hommey/Cart/Cart.dart';
import 'package:hommey/Details/Details.dart';
import 'package:hommey/Home/Home.dart';
import 'package:hommey/Login/Login.dart';
import 'package:hommey/Notifications/Notifications.dart';
import 'package:hommey/profile/profile.dart';

void main() {
    runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

 

    return MaterialApp(
      title: 'App',
      routes: <String, WidgetBuilder>{
        '/login':(BuildContext context) =>  new Login(),
        // '/signUp':(BuildContext contex) => new ,
        '/home':(BuildContext context) =>  new Home(),
        '/details':(BuildContext context) =>  new Details(),
        '/profile':(BuildContext context) =>  new Profile(),
        '/notifications':(BuildContext context) =>  new Notifications(),
        '/cart':(BuildContext context) =>  new Cart(),
        // '/like':(BuildContext contex) =>  new (),
        // '/search':(BuildContext contex) =>  new S(),

      },
      home: Scaffold(
          body: Container(
            child: new Login()
          ),

          )
        

    );
  }
}