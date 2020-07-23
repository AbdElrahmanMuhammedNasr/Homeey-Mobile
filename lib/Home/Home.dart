import 'dart:math';
import 'package:hommey/Home/SingleFood.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:hommey/Common/AppBarTop.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/Common/loading.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> food = [
    {"id":'1', "image": "b1.jpg", "name": "rice", "price": 12},
    {"id":'2', "image": "b4.jpg", "name": "cake", "price": 10},
    {"id":'3', "image": "b2.jpg", "name": "rice", "price": 20},
    {"id":'4', "image": "b3.jpg", "name": "bake", "price": 15},
    {"id":'5', "image": "1.jpg", "name": "rice", "price": 12},
    {"id":'6', "image": "9.png", "name": "cake", "price": 10},
    {"id":'7', "image": "2.jpg", "name": "rice", "price": 20},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBarTop(
        title: 'Homeey',
      ),
      body: food.isEmpty
          ? Loading()
          : SingleChildScrollView(
              child: Column(
                children: food
                    .map((e) => new SingleFood(
                          id: e["id"],
                          image: e["image"],
                          name: e["name"],
                          price: e["price"],
                        ))
                    .toList(),
              ),
            ),
      bottomNavigationBar: new BottomBar(),
      drawer: DarwerBar(),
    ));
  }
}
