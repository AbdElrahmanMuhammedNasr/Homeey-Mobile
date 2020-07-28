import 'package:flutter/material.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/loading.dart';
import 'package:hommey/Models/user.dart';
import 'package:hommey/User/foods.dart';
import 'package:hommey/User/positiveComment.dart';
import 'package:hommey/profile/profile_details.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class ProfilePage extends StatefulWidget {
  String name;
  ProfilePage({this.name});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<Map<String, dynamic>> userData = [];

  @override
  void initState() {
    super.initState();
    getAllUserProducts();
  }

  getAllUserProducts() {
    print('i am in user functio');
    http
        .get('https://hommey-b9aa6.firebaseio.com/user.json')
        .then((http.Response res) {
      print('i am in home functio2');

      final Map<String, dynamic> resData = json.decode(res.body);
      resData.forEach((String id, dynamic data) {
        if (data["email"] == new User().getUserName()) {
          final obj = {
            "id": id,
            "image": data["image"],
            "firstName": data["firstName"],
            "lastName": data["lastName"],
            "date": data["date"],
            "phone": data["phone"],
            "email": data["email"],
          };
          setState(() {
            userData.add(obj);
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: userData.isEmpty
            ? Loading()
            : Column(children: <Widget>[
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
                              'profile',
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
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Stack(
                      children: <Widget>[
                        SafeArea(
                          child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                children: <Widget>[
                                  Center(
                                    child: Column(
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 50,
                                          backgroundImage: NetworkImage(
                                              userData[0]["image"]),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              '${userData[0]["firstName"]} ${userData[0]["lastName"]} ',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'Raleway',
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  child: Column(
                                                    children: <Widget>[
                                                      Text(
                                                        '20',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Food',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                'Raleway'),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 50,
                                                ),
                                                Container(
                                                  child: Column(
                                                    children: <Widget>[
                                                      Text(
                                                        '20',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Client',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                'Raleway'),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),

/********************* second ************************** */

                Expanded(
                  flex: 6,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    color: Colors.white,
                    child: Table(
                      children: [
                        TableRow(children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Foods(image: userData[0]["image"],)));
                            },
                            child: ProfileDetails(
                              text: "click",
                              sub: "Chef Food",
                              icon: Icon(
                                Icons.restaurant,
                                color: Colors.blue[300],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PositiveComent(),
                              ));
                            },
                            child: ProfileDetails(
                              text: "2",
                              sub: " Comment",
                              icon: Icon(
                                Icons.comment,
                                color: Colors.blue[300],
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          GestureDetector(
                            child: ProfileDetails(
                              text: "15",
                              sub: "Number Of Food",
                              icon: Icon(
                                Icons.confirmation_number,
                                color: Colors.blue[300],
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: ProfileDetails(
                              text: "20",
                              sub: "Customer deal",
                              icon: Icon(
                                Icons.record_voice_over,
                                color: Colors.blue[300],
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
              ]),
      ),

      bottomNavigationBar: new BottomBar(),
      // drawer: DarwerBar(),
    );
  }
}
