import 'package:flutter/material.dart';
import 'package:hommey/Common/Alert.dart';
import 'package:hommey/Common/AppBarTop.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/Notifications/SingleNoti.dart';
import 'package:hommey/profile/Profile_Page.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<Map<String, dynamic>> nots = [
    {"name": 'Abdo', "order": 'rice', "image": '1.jpg'},
    {"name": 'tamer', "order": 'rice', "image": '2.jpg'},
    {"name": 'ali', "order": 'rice', "image": 'm.jpg'},
    {"name": 'Abdo', "order": 'rice', "image": 'mos.jpg'},
    {"name": 'Abdo', "order": 'rice', "image": '1.jpg'},
    {"name": 'tamer', "order": 'rice', "image": '2.jpg'},
    {"name": 'ali', "order": 'rice', "image": 'm.jpg'},
    {"name": 'Abdo', "order": 'rice', "image": 'mos.jpg'},
    {"name": 'Abdo', "order": 'rice', "image": '1.jpg'},
    {"name": 'tamer', "order": 'rice', "image": '2.jpg'},
    {"name": 'ali', "order": 'rice', "image": 'm.jpg'},
    {"name": 'Abdo', "order": 'rice', "image": 'mos.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(
              letterSpacing: 3,
              fontFamily: 'Billabong',
              fontWeight: FontWeight.w300),
        ),
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: nots
              .map((e) => SingleNot(
                    order: e['order'],
                    name: e['name'],
                    image: e['image'],
                  ))
              .toList(),
        ),
      ),
      bottomNavigationBar: new BottomBar(),
      drawer: DarwerBar(),
    ));
  }
}
