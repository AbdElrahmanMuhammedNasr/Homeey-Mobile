import 'package:flutter/material.dart';
import 'package:hommey/Common/LoginService.dart';
import 'package:hommey/Login/Login.dart';
class DarwerBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final AuthService _authService = AuthService();


    return Drawer(
      child: Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton.icon(
                    onPressed: () => print('object'),
                    color: Colors.blue[400],
                    colorBrightness: Brightness.dark,
                    icon: Icon(Icons.settings),
                    label: Text('Setting'),
                  ),
                  RaisedButton.icon(
                    onPressed: () async {
                      await _authService.signOut();
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => new Login(),));
                      },
                    color: Colors.red,
                    colorBrightness: Brightness.dark,
                    icon: Icon(Icons.outlined_flag),
                    label: Text('Logout'),
                  ),
                ],
              )
              ),
      
    );
  }
}