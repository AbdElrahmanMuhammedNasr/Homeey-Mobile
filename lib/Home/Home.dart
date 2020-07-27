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
    getAllProducts();
  }

   getAllProducts() {
    print('i am in home functio');
    http
        .get('https://hommey-b9aa6.firebaseio.com/products.json')
        .then((http.Response res) {
      print('i am in home functio2');

      final Map<String, dynamic> resData = json.decode(res.body);
      resData.forEach((String id, dynamic data) {
        final obj = {
          "id": id,
          "image": data["image"],
          "name": data["name"],
          "price": data["price"],
          "category": data["category"],
          "address": data["address"],
          "email": data["email"],
          "inger": data["inger"],
          "dis": data["dis"],
          "time": data["time"]
        };
        setState(() {
          food.add(obj);
        });
      });
    });
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
                          price: e["price"].toString(),
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
