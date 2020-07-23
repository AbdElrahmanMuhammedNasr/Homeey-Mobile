import 'package:flutter/material.dart';
import 'package:hommey/Home/Home.dart';
import 'package:hommey/Login/Login.dart';
import 'package:hommey/Models/user.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: new Login());
  }
}
