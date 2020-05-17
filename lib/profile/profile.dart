import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
              child:Column(
                children: <Widget>[
                  Text('home'),
                  RaisedButton(onPressed:()=> { Navigator.of(context).pushNamed('/login') }, child: Text('login'))
                ],
                
              ) 
                         
          ),

        bottomNavigationBar: BottomNavigationBar(items:[
            BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart) , title: Text('data')),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_active) , title: Text('data')),
            BottomNavigationBarItem(icon: Icon(Icons.home) , title: Text('home')),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border) , title: Text('data')),
            BottomNavigationBarItem(icon: Icon(Icons.search) , title: Text('search')),
        ], type: BottomNavigationBarType.fixed,
          onTap: (int x) => print('object $x'),
      ),

      
    )
    );
  }
}