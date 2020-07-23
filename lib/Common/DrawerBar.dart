import 'package:flutter/material.dart';
import 'package:hommey/Login/Login.dart';

class DarwerBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: SafeArea(
        child: Container(
            // margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.all(20),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
        
            RaisedButton.icon(
              onPressed: () => print('object'),
              color: Colors.blue[400],
              colorBrightness: Brightness.dark,
              icon: Icon(Icons.person_pin),
              label: Text('Profile Setting'),
            ),
            SizedBox(
              height: 5,
            ),
            RaisedButton.icon(
              onPressed: () => print('object'),
              color: Colors.blue[400],
              colorBrightness: Brightness.dark,
              icon: Icon(Icons.settings),
              label: Text('general Setting'),
            ),
            SizedBox(
              height: 5,
            ),
            RaisedButton.icon(
              onPressed: ()  {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login(),));
              },
              color: Colors.red,
              colorBrightness: Brightness.dark,
              icon: Icon(Icons.outlined_flag),
              label: Text('Logout'),
            ),
          ],
        )),
      ),
    );
  }
}
