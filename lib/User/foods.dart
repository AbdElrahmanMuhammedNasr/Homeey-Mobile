import 'package:flutter/material.dart';
import 'package:hommey/Common/AppBarTop.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/profile/Profile_Page.dart';

class Foods extends StatefulWidget {
  @override
  _FoodsState createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTop(
        title: 'Chef Food',
      ),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'Find Your Food',
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 1,
                              color: Colors.black54),
                        ),
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('images/2.jpg'),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    color: Colors.black12,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                    Text(
                    'Best Sale',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    height: 250,
                    child: Expanded(
                      child: Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            food("images/b1.jpg"),
                            food("images/b2.jpg"),
                            food("images/b3.jpg"),
                            food("images/b4.jpg"),
                            food("images/b2.jpg"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Catigory',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: <Widget>[
                        Catigory('b1.jpg', 'Sweet'),
                        Catigory('b2.jpg', 'Juice'),
                        Catigory('b3.jpg', 'Meat'),
                        Catigory('b4.jpg', 'cold')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: new BottomBar(),
      drawer: DarwerBar(),
    );
  }
}

Widget food(image) {
  return AspectRatio(
    aspectRatio: 2.5 / 3,
    child: Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
    ),
  );
}

Widget Catigory(image, type) {
  return Container(
    height: 200,
    width: double.infinity,
    margin: EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('images/${image}'), fit: BoxFit.cover),
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.2),
          ],
        ),
      ),
      child: Align(
          alignment: Alignment.center,
          child: Text(
            '${type}',
            style: TextStyle(fontSize: 30, color: Colors.white),
          )),
    ),
  );
}
