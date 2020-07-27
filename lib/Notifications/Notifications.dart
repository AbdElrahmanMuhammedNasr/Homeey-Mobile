import 'package:flutter/material.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/Common/loading.dart';
import 'package:hommey/Models/user.dart';
import 'package:hommey/Notifications/SingleNoti.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<Map<String, dynamic>> nots = [
    // {"name": 'Abdo', "order": 'rice', "image": '1.jpg'},
  ];

  getAllNotifications() {
    print('not1');

    http
        .get('https://hommey-b9aa6.firebaseio.com/Notifications.json')
        .then((http.Response res) {
      final Map<String, dynamic> resData = json.decode(res.body);
      resData.forEach((String id, dynamic data) {
        if (data["emial"] == new User().getUserName()) {
          final obj = {
            "id": id,
            "email": data["email"],
            "order": data["order"],
            "time": data["time"],
            "user": data["user"],
          };
          print('not2');
          setState(() {
            nots.add(obj);
          });
        }
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllNotifications();
  }

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
      body: nots.isEmpty
          ? Loading()
          : SingleChildScrollView(
              child: Column(
                children: nots
                    .map((e) => SingleNot(
                          order: e['order'],
                          time: e['time'],
                          user: e['user'],
                        ))
                    .toList(),
              ),
            ),
      bottomNavigationBar: new BottomBar(),
      drawer: DarwerBar(),
    ));
  }
}
