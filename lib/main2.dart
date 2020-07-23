import 'package:flutter/material.dart';
import 'package:hommey/Details/Details.dart';
import 'package:hommey/Home/Home.dart';
import 'package:hommey/Login/Login.dart';
import 'package:hommey/Models/user.dart';
import 'package:hommey/User/foods.dart';
import 'package:hommey/profile/Profile_Page.dart';
import 'package:provider/provider.dart';
class Main2 extends StatefulWidget {
  @override
  _Main2State createState() => _Main2State();
}

class _Main2State extends State<Main2> {


  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if(user == null) {
      // return Login();
      return Home();
      // return Foods(); 
    }else{
      // return ProfilePage();
      return Home();
        // return Foods(); 

    }
  }
}