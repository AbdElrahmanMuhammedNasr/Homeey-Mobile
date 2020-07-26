import 'package:hommey/Home/SingleFood.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

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

  List<Map<String, dynamic>> food = [];

  @override
  void initState() {
    super.initState();
    // food = getAllProducts();
  }

  @override
  void setState(fn) {
    super.setState(fn);
    // food = getAllProducts();
  }

  List getAllProducts() {
    final List<Map<String, dynamic>> products = [];
    http
        .get('https://hommey-b9aa6.firebaseio.com/products.json')
        .then((http.Response res) {
      final Map<String, dynamic> resData = json.decode(res.body);
      resData.forEach((String id, dynamic data) {
        final obj = {
          "id":id,
          "image": data["image"],
          "name": data["name"],
          "price": data["price"],
          "category": data["category"],
          "address": data["address"],
          "email": data["email"],
          "inger": data["inger"],
          "dis": data["dis"],
          "time":data["time"]
        };
        products.add(obj);
      });
    });
    return products;
  }


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
                          category: e["category"],
                          address: e["address"],
                          email: e["email"],
                          inger: e["inger"],
                          dis: e["dis"],
                          time: e["time"],
                        ))
                    .toList(),
              ),
            ),
      bottomNavigationBar: new BottomBar(),
      drawer: DarwerBar(),
    ));
  }
}
