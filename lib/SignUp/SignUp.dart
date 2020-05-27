import 'package:flutter/material.dart';
import 'package:hommey/Common/LoginService.dart';
import 'package:hommey/Common/loading.dart';
import 'package:hommey/Home/Home.dart';
import 'package:hommey/Login/Login.dart';

class SignUPF extends StatefulWidget {
  @override
  _SignUPFState createState() => _SignUPFState();
}

class _SignUPFState extends State<SignUPF> {

  final AuthService _authService = AuthService();
  final email = TextEditingController();
  final password = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Homeey',
            style: TextStyle(letterSpacing: 2),
          ),
        ),

        body: loading?Loading():SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 5, left: 15,right: 15,bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(15)),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                  color: Colors.black12,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' Email',
                      icon: Icon(Icons.email),
                    ),
                    style: TextStyle(
                        fontSize: 20, letterSpacing: 2, color: Colors.blue),
                    controller: email,    
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                  color: Colors.black12,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'First Name',
                      icon: Icon(Icons.ac_unit),
                    ),
                    style: TextStyle(
                        fontSize: 20, letterSpacing: 2, color: Colors.blue),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                  color: Colors.black12,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Last Name',
                      icon: Icon(Icons.ac_unit),
                    ),
                    style: TextStyle(
                        fontSize: 20, letterSpacing: 2, color: Colors.blue),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                  color: Colors.black12,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' City',
                      icon: Icon(Icons.location_city),
                    ),
                    style: TextStyle(
                        fontSize: 20, letterSpacing: 2, color: Colors.blue),
                  ),
                ),
                 Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                  color: Colors.black12,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' State',
                      icon: Icon(Icons.location_city),
                    ),
                    style: TextStyle(
                        fontSize: 20, letterSpacing: 2, color: Colors.blue),
                  ),
                ),
                 Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                  color: Colors.black12,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' Code',
                      icon: Icon(Icons.cloud_done),
                    ),
                    style: TextStyle(
                        fontSize: 20, letterSpacing: 2, color: Colors.blue),
                  ),
                ),
                Container(
                  // date
                  // margin: EdgeInsets.only(bottom: 10),
                  // padding:
                      // EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                  // child: CalendarDatePicker(initialDate:DateTime(1920, 2, 1) , firstDate: DateTime(1980, 1, 1), lastDate: DateTime(2000, 1, 1), onDateChanged: (DateTime newDateTime) {
                  // Do something
                // },
                // )
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                  color: Colors.black12,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' Phone',
                      icon: Icon(Icons.phone),
                    ),
                    style: TextStyle(
                        fontSize: 20, letterSpacing: 2, color: Colors.blue),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                  color: Colors.black12,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' Email',
                      icon: Icon(Icons.email),
                    ),
                    style: TextStyle(
                        fontSize: 20, letterSpacing: 2, color: Colors.blue),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 30),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 50),
                        child: Row(
                          children: <Widget>[
                            Radio(value: 1, groupValue: 1, onChanged: null),
                            Text('Male')
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(value: 0, groupValue: 1, onChanged: null),
                            Text('Feamle')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                 Container(
                  margin: EdgeInsets.only(top: 10, bottom: 30),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                  color: Colors.black12,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: ' Password ',
                        icon: Icon(Icons.verified_user)),
                    style: TextStyle(
                        fontSize: 20, letterSpacing: 2, color: Colors.blue),
                    controller: password,    
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: RaisedButton.icon(
                        onPressed: () async{
                          setState(() {
                            loading = true;
                          });
                              print(email.text);

                          dynamic result = await _authService.createNewUser(email.text, password.text);

                          if(result == null){
                            setState(() {
                               loading = false;

                            });
                          }
                        },
                        color: Colors.red[400],
                        colorBrightness: Brightness.dark,
                        icon: Icon(Icons.ac_unit),
                        label: Text('SignUP'),
                      ),
                    ),
                    Container(
                      child: RaisedButton.icon(
                        onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login(),));
                        },
                        color: Colors.blue[400],
                        colorBrightness: Brightness.dark,
                        icon: Icon(Icons.ac_unit),
                        label: Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
