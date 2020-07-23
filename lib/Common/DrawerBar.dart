import 'package:flutter/material.dart';
import 'package:hommey/Login/Login.dart';

class DarwerBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('images/2.jpg'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Abdo Nasr',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Billabong',
                          fontWeight: FontWeight.w300,
                          letterSpacing: 2,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('abdo@abdo.com', style: TextStyle(color: Colors.white),)
                    ],
                  ),
                )),
            Expanded(
                flex: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    RaisedButton.icon(
                      onPressed: () => print('object'),
                      // color: Colors.blue[400],
                      // colorBrightness: Brightness.dark,
                      icon: Icon(Icons.person_pin),
                      label: Text('Profile Setting'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RaisedButton.icon(
                      onPressed: () => print('object'),
                      // color: Colors.blue[400],
                      // colorBrightness: Brightness.dark,
                      icon: Icon(Icons.settings),
                      label: Text('general Setting'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                      },
                      color: Colors.red,
                      colorBrightness: Brightness.dark,
                      icon: Icon(Icons.outlined_flag),
                      label: Text('Logout'),
                    ),
                  ],
                )),
          ],
        )),
      ),
    );
  }
}
