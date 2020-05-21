import 'package:flutter/material.dart';
import 'package:hommey/Common/LoginService.dart';
import 'package:hommey/Common/loading.dart';
import 'package:hommey/Home/Home.dart';
import 'package:hommey/Models/user.dart';
import 'package:hommey/SignUp/SignUp.dart';

class Login extends StatefulWidget {


  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

    final AuthService _authService = AuthService();
  
    final email = TextEditingController();
    final password = TextEditingController();
    String error ='';
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


          body: loading ? Loading():Container(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //     image:  AssetImage("images/1127.jpg"), fit: BoxFit.cover)
            // ),

     
            margin: EdgeInsets.all(20),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(15)),
                 Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(error,style: TextStyle(color: Colors.red), ),
                  ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 5,top: 5),
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
                  margin: EdgeInsets.only(top: 10, bottom: 30),
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 5,top: 5),
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
                        onPressed: () async {
                          setState(() {
                           loading = true;
                         });
                         dynamic result =  await _authService.signIn(email.text, password.text);
                         
                         if(result == null){
                           setState(() {
                             error = "wrong Email or Password";
                             loading = false;
                           });
                         }
                        },
                        color: Colors.blue[400],
                        colorBrightness: Brightness.dark,
                        icon: Icon(Icons.ac_unit),
                        label: Text('Login', style: TextStyle(fontSize: 18),),
                      ),
                    ),
                    Container(
                      child: RaisedButton.icon(
                        onPressed: () => {Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignUPF()))},
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
          ),
          ),
    );
  }
}
