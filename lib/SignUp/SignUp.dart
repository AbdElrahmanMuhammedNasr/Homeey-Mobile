import 'package:flutter/material.dart';
import 'package:hommey/Home/Home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
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
          child: Expanded(
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                            )),
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                        child: Column(
                          children: <Widget>[

                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "First Name",
                                      border: InputBorder.none),
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
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Last Name",
                                    border: InputBorder.none,
                                    // suffixIcon: Icon(Icons.panorama_fish_eye),
                                  ),
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
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    border: InputBorder.none,
                                  ),
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
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    border: InputBorder.none,
                                  ),
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
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Confirm Password",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  // color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Address",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  // color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "little About You",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Home(),
                                  ),
                                );
                              },
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Home(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      'Sign UP',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
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
      ),
    );
  }
}