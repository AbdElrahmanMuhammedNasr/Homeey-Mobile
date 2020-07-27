import 'package:flutter/material.dart';
import 'package:hommey/Common/AppBarTop.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/User/DealCustomer.dart';
import 'package:hommey/User/foods.dart';
import 'package:hommey/User/positiveComment.dart';
import 'package:hommey/profile/profile_details.dart';

class ProfilePage extends StatelessWidget {
  String name;
  ProfilePage({this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
              letterSpacing: 3,
              fontFamily: 'Billabong',
              fontWeight: FontWeight.w300),
        ),
        leading: Icon(Icons.arrow_back),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.red,
                  child: Stack(
                    children: <Widget>[
                      Image.asset(
                        'images/2.jpg',
                        width: double.maxFinite,
                        height: double.maxFinite,
                        fit: BoxFit.fill,
                      ),
                      Container(
                        color: Colors.blue[300].withOpacity(.8),
                      ),
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
                                        backgroundImage:
                                            AssetImage('images/2.jpg'),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                '${name} ',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    letterSpacing: 1,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
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
                                builder: (context) => Foods()));
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
            ],
          )
        ],
      ),
      bottomNavigationBar: new BottomBar(),
      drawer: DarwerBar(),
    );
  }
}
