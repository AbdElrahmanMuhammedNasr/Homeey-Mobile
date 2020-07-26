import 'package:flutter/material.dart';
import 'package:hommey/Home/Home.dart';
import 'package:hommey/Models/user.dart';
import 'package:hommey/SignUp/SignUp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email;
  String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.blue[900],
                Colors.blue[800],
                Colors.blue[400],
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 40, horizontal: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Login',
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'welcome back',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 5,
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          )),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 100),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black),),
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Email or Phone",
                                        border: InputBorder.none),
                                    onSaved: (val) {
                                      _email = val;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black)),
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      border: InputBorder.none,
                                    ),
                                    onSaved: (val) {
                                      _password = val;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              InkWell(
                                onTap: () {
                                  _formKey.currentState.save(); 
                                   User c = new  User();
                                   c.setUserName(_email);

                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Home(),
                                    ),
                                  );
                                  _formKey.currentState.reset();
                                },
                                child: Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'login',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => SignUp(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(color: Colors.black)),
                                  child: Center(
                                    child: Text(
                                      'SignUp',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
