import 'package:flutter/material.dart';
import 'package:hommey/Cart/Cart.dart';
import 'package:hommey/Details/Details.dart';
import 'package:hommey/Home/Home.dart';
import 'package:hommey/Login/Login.dart';
import 'package:hommey/Notifications/Notifications.dart';
import 'package:hommey/profile/Profile_Page.dart';

void main() {
    runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


      return MaterialApp(
          home: new ProfilePage()
          // )
        
    );
  }
}