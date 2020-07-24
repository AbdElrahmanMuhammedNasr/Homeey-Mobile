import 'package:flutter/material.dart';
import 'package:hommey/Common/Alert.dart';
import 'package:hommey/Common/AppBarTop.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/CatigoryAlert.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/Details/Details.dart';
import 'package:hommey/User/LsitOfFoodTypes.dart';
import 'package:hommey/profile/Profile_Page.dart';

class Foods extends StatefulWidget {
  @override
  _FoodsState createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chef Food',
          style: TextStyle(
              letterSpacing: 3,
              fontFamily: 'Billabong',
              fontWeight: FontWeight.w300),
        ),
        leading: Icon(Icons.arrow_back),
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
                            food(context, "b1.jpg"),
                            food(context, "b2.jpg"),
                            food(context, "b3.jpg"),
                            food(context, "b4.jpg"),
                            food(context, "b2.jpg"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Catigory',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CatigoryAlert(),
                          ));
                        },
                      )
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: <Widget>[
                        Catigory(context, 'b1.jpg', 'brakfast'),
                        Catigory(context, 'b2.jpg', 'Sweet'),
                        Catigory(context, '12.jpg', 'Juice'),
                        Catigory(context, 'b3.jpg', 'Fruit'),
                        Catigory(context, 'b4.jpg', 'vegen')
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

Widget food(context, image) {
  return AspectRatio(
    aspectRatio: 2.5 / 3,
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Details(
            id: "1",
          ),
        ));
      },
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage('images/${image}'), fit: BoxFit.cover),
        ),
      ),
    ),
  );
}

Widget Catigory(context, image, type) {
  return InkWell(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ListOfFood(
          type: type,
        ),
      ));
    },
    child: Container(
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
    ),
  );
}
