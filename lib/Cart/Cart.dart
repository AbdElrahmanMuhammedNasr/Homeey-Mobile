import 'package:flutter/material.dart';
import 'package:hommey/Common/AppBarTop.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/profile/Profile_Page.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  _goTo(int x) {
    switch (x) {
      case 0:
        Navigator.of(context).pushNamed('/cart');
        break;
      case 1:
        Navigator.of(context).pushNamed('/notifications');
        break;
      case 2:
        Navigator.of(context).pushNamed('/home');
        break;
      //  case 3: Navigator.of(context).pushNamed('/cart'); break;
      //  case 4: Navigator.of(context).pushNamed('/cart'); break;

      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarTop(
          title: 'Cart',
        ),
        body: Container(
          child: PageView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.blueAccent,
                child: Card(
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/b2.jpg'),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        title: Center(
                          child: Text(
                            'Cake',
                            style: TextStyle(fontSize: 25, letterSpacing: 2),
                          ),
                        ),
                        subtitle: Center(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Text('Price : 20 EGY'),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Ordered in : 2020-10-5'),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Chef : Ali Mohamed '),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 160.0,
                color: Colors.blueAccent,
                child: Card(
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/1.jpg'),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        title: Center(
                          child: Text(
                            'Cake',
                            style: TextStyle(fontSize: 25, letterSpacing: 2),
                          ),
                        ),
                        subtitle: Center(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Text('Price : 20 EGY'),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Ordered in : 2020-10-5'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(color: Colors.black),
                      Text(
                        'Chef',
                        style: TextStyle(fontSize: 20, letterSpacing: 2),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 7,
                            ),
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage('images/m.jpg'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Tamer Ali',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Raiting - 4.2',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black26),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: new BottomBar(),
        drawer: DarwerBar(),
      ),
    );
  }
}
