import 'package:flutter/material.dart';
import 'package:hommey/Common/AppBarTop.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';

class Like extends StatefulWidget {
  List like = ['b1.jpg', 'b2.jpg', 'b3.jpg'];

  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarTop(
          title: 'Liked',
        ),
        body: Container(
          child: ListView(
              scrollDirection: Axis.vertical,
              children: widget.like.map((e) => food(e)).toList()),
        ),
        bottomNavigationBar: new BottomBar(),
        drawer: DarwerBar(),
      ),
    );
  }
}

Widget food(image) {
  return Container(
    height: 200,
    width: 200,
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
          image: AssetImage('images/${image}'), fit: BoxFit.cover),
    ),
  );
}
