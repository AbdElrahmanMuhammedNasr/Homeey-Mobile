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
        '/login':(BuildContext contex) =>  new Login(),
        // '/signUp':(BuildContext contex) => new ,
        '/home':(BuildContext contex) =>  new Home(),
        '/details':(BuildContext contex) =>  new Details(),
        '/profile':(BuildContext contex) =>  new Profile(),
        '/noticications':(BuildContext contex) =>  new Notifications(),
        '/cart':(BuildContext contex) =>  new Cart(),
        // '/like':(BuildContext contex) =>  new (),
        // '/search':(BuildContext contex) =>  new S(),

      },
      home: new Home(),

    );
  }
}