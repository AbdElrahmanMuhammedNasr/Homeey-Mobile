import 'package:flutter/material.dart';
import 'package:hommey/Common/Alert.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/profile/Profile_Page.dart';

class Details extends StatefulWidget {
  String id;
  String image;
  String name;
  String price;

  String category;
  String address;
  String email;
  String inger;
  String dis;
  String time;

  Details(
      {this.time,
      this.id,
      this.image,
      this.name,
      this.price,
      this.address,
      this.category,
      this.dis,
      this.email,
      this.inger});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    // print('Details immage ${widget.image}');

    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.white,
                Colors.white10,
                Colors.white12,
              ],
            ),
          ),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.blue,
                  height: 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Details',
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 3,
                                  fontFamily: 'Billabong',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(120),
                      bottomLeft: Radius.circular(120),
                      bottomRight: Radius.circular(120),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                          widget.image,
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      // color: Colors.black.withOpacity(0.6),
                      // borderRadius: BorderRadius.circular(50),
                      ),
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '${widget.name}',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  letterSpacing: 2,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '${widget.price} EGP',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  letterSpacing: 2,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(padding: EdgeInsets.all(10)),
                            Container(
                              margin: EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.blue,
                                          ),
                                          Text(
                                            '${widget.address}',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 30)),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.yellow.withOpacity(0.9),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      padding: EdgeInsets.all(2),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.timer,
                                              color: Colors.green,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Avilable',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  letterSpacing: 1,
                                                  color: Colors.green),
                                            ),
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.directions_bike,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '${widget.time} min',
                                    style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1,
                                        color: Colors.green),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '${widget.email}',
                                      style: TextStyle(
                                          fontSize: 20,
                                          letterSpacing: 1,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                        icon: Icon(Icons.arrow_forward),
                                        onPressed: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) => ProfilePage(
                                              name: widget.email,
                                            ),
                                          ));
                                        })
                                  ],
                                )),
                            Container(
                              child: RaisedButton.icon(
                                color: Colors.green,
                                colorBrightness: Brightness.dark,
                                icon: Icon(
                                  Icons.send,
                                ),
                                label: const Text(
                                  'Order',
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w700),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => AlertF(
                                        type: 'order',
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: new BottomBar(),
      drawer: DarwerBar(),
    ));
  }
}
