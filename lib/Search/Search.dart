import 'package:flutter/material.dart';
import 'package:hommey/Common/AppBarTop.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/profile/Profile_Page.dart';

class SearchF extends StatefulWidget {
  @override
  _SearchFState createState() => _SearchFState();
}

class _SearchFState extends State<SearchF> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Search',
            style: TextStyle(
                letterSpacing: 3,
                fontFamily: 'Billabong',
                fontWeight: FontWeight.w300),
          ),
          leading: Icon(Icons.arrow_back),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  color: Colors.black12,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: 'Search'),
                    style: TextStyle(fontSize: 20, letterSpacing: 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue[300],
                        child: ListTile(
                          title: Text(
                            'Fish',
                            style: TextStyle(fontSize: 20, letterSpacing: 1),
                          ),
                          subtitle: Text('4'),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/1.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue[300],
                        child: ListTile(
                          title: Text(
                            'Potato',
                            style: TextStyle(fontSize: 20, letterSpacing: 1),
                          ),
                          subtitle: Text('4'),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/1.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue[300],
                        child: ListTile(
                          title: Text(
                            'Rice',
                            style: TextStyle(fontSize: 20, letterSpacing: 1),
                          ),
                          subtitle: Text('4'),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/1.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue[300],
                        child: ListTile(
                          title: Text(
                            'Fish',
                            style: TextStyle(fontSize: 20, letterSpacing: 1),
                          ),
                          subtitle: Text('4'),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/1.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue[300],
                        child: ListTile(
                          title: Text(
                            'Potato',
                            style: TextStyle(fontSize: 20, letterSpacing: 1),
                          ),
                          subtitle: Text('4'),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/1.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue[300],
                        child: ListTile(
                          title: Text(
                            'Rice',
                            style: TextStyle(fontSize: 20, letterSpacing: 1),
                          ),
                          subtitle: Text('4'),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/1.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue[300],
                        child: ListTile(
                          title: Text(
                            'Fish',
                            style: TextStyle(fontSize: 20, letterSpacing: 1),
                          ),
                          subtitle: Text('4'),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/1.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue[300],
                        child: ListTile(
                          title: Text(
                            'Potato',
                            style: TextStyle(fontSize: 20, letterSpacing: 1),
                          ),
                          subtitle: Text('4'),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/1.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue[300],
                        child: ListTile(
                          title: Text(
                            'Rice',
                            style: TextStyle(fontSize: 20, letterSpacing: 1),
                          ),
                          subtitle: Text('4'),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/1.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue[300],
                        child: ListTile(
                          title: Text(
                            'Fish',
                            style: TextStyle(fontSize: 20, letterSpacing: 1),
                          ),
                          subtitle: Text('4'),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/1.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue[300],
                        child: ListTile(
                          title: Text(
                            'Potato',
                            style: TextStyle(fontSize: 20, letterSpacing: 1),
                          ),
                          subtitle: Text('4'),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/1.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue[300],
                        child: ListTile(
                          title: Text(
                            'Rice',
                            style: TextStyle(fontSize: 20, letterSpacing: 1),
                          ),
                          subtitle: Text('4'),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/1.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: new BottomBar(),
        drawer: new DarwerBar(),
      ),
    );
  }
}
