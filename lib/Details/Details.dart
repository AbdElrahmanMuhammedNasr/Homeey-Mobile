import 'package:flutter/material.dart';
import 'package:hommey/Common/Alert.dart';
import 'package:hommey/Common/AppBarTop.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/profile/Profile_Page.dart';

class Details extends StatefulWidget {
  String id;
  Details({this.id});

  Map<String, dynamic> singledetil = {
    "image": "b1.jpg",
    "name": 'Rice',
    "price": '12',
    "address": '34 st - kafr Elzayat - Tanta',
    "time": '20',
    "rate": '4',
    "chef": 'Tamer ALi',
  };

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBarTop(
        title: 'Details',
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )),
              child: Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.asset('images/${widget.singledetil["image"]}')),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${widget.singledetil["name"]}',
                    style: TextStyle(
                        fontSize: 25, color: Colors.black, letterSpacing: 2, fontFamily: 'Raleway',fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '${widget.singledetil["price"]} EGP',
                    style: TextStyle(
                        fontSize: 18, color: Colors.black, letterSpacing: 2,fontFamily: 'Raleway',fontWeight: FontWeight.bold),
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
                                  '${widget.singledetil["address"]}',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.yellow.withOpacity(0.9),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
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
                          '${widget.singledetil["time"]} min',
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
                            '${widget.singledetil["chef"]}',
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 1,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          IconButton(
                              icon: Icon(Icons.arrow_right),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ProfilePage(
                                    name: widget.singledetil["chef"],
                                  ),
                                ));
                              })
                        ],
                      )),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '${widget.singledetil["rate"]}',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
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
                            fontFamily: 'Raleway', fontWeight: FontWeight.w700),
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
      bottomNavigationBar: new BottomBar(),
      drawer: DarwerBar(),
    ));
  }
}
