import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Homeey',
              style: TextStyle(letterSpacing: 2),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.account_circle),
                  onPressed: () => print('object')),
              // IconButton(icon: Icon(Icons.settings), onPressed: ()=> print('object')),
            ],
          ),




          body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('images/2.jpg'),
                  ),
                ),
                Padding(padding: EdgeInsets.all(15)),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: ' Email',
                      icon: Icon(Icons.email),
                    ),
                    style: TextStyle(
                        fontSize: 20, letterSpacing: 2, color: Colors.blue),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: ' Password ',
                        icon: Icon(Icons.verified_user)),
                    style: TextStyle(
                        fontSize: 20, letterSpacing: 2, color: Colors.blue),
                    textAlign: TextAlign.center,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: RaisedButton.icon(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/home');
                        },
                        color: Colors.blue[400],
                        colorBrightness: Brightness.dark,
                        icon: Icon(Icons.ac_unit),
                        label: Text('Login'),
                      ),
                    ),
                    Container(
                      child: RaisedButton.icon(
                        onPressed: () => print('object'),
                        color: Colors.red[400],
                        colorBrightness: Brightness.dark,
                        icon: Icon(Icons.ac_unit),
                        label: Text('SignUP'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
