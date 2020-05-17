import 'package:flutter/material.dart';
import 'package:hommey/Cart/Cart.dart';
import 'package:hommey/Details/Details.dart';
import 'package:hommey/Home/Home.dart';
import 'package:hommey/Login/Login.dart';
import 'package:hommey/Notifications/Notifications.dart';
import 'package:hommey/profile/profile.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  _goTo(int x){
      switch (x) {
        // case 0: Navigator.push(context,MaterialPageRoute(builder: (context) => Home()),);   break;
        // case 1: Navigator.of(context).pushNamed('/noticications');   break;
        // case 2: Navigator.push(context,new MaterialPageRoute(builder: (context) => new Home()));   break;
        // case 3: Navigator.of(context).pushNamed('/chart');   break;
        // case 4: Navigator.of(context).pushNamed('/chart');   break;
        // case 5: Navigator.of(context).pushNamed('/chart');   break;
      }
   }

    return MaterialApp(
      title: 'App',
      routes: <String, WidgetBuilder>{
        '/login':(BuildContext context) =>  new Login(),
        // '/signUp':(BuildContext contex) => new ,
        '/home':(BuildContext context) =>  new Home(),
        '/details':(BuildContext context) =>  new Details(),
        '/profile':(BuildContext context) =>  new Profile(),
        '/noticications':(BuildContext context) =>  new Notifications(),
        '/cart':(BuildContext context) =>  new Cart(),
        // '/like':(BuildContext contex) =>  new (),
        // '/search':(BuildContext contex) =>  new S(),

      },
      home: Scaffold(
          appBar:AppBar(
            // backgroundColor: Colors.white12,
            title: Text('Homeey', style: TextStyle(letterSpacing: 2),),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.account_circle), onPressed: ()=> print('object')),
              IconButton(icon: Icon(Icons.settings), onPressed: ()=> print('object')),

            ],
          ) ,
          body: Container(
            child: new Home()
          ),


           bottomNavigationBar: BottomNavigationBar(items:[
            BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart) , title: Text('cart'), ),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_active) , title: Text('notification')),
            BottomNavigationBarItem(icon: Icon(Icons.home) , title: Text('home')),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border) , title: Text('like')),
            BottomNavigationBarItem(icon: Icon(Icons.search) , title: Text('search')),
            ], type: BottomNavigationBarType.fixed,
             onTap: (int x) => _goTo(x),
             
          ),
          
          )
        

    );
  }
}