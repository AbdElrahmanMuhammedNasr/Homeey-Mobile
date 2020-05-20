import 'package:flutter/material.dart';
import 'package:hommey/Cart/Cart.dart';
import 'package:hommey/Home/Home.dart';
import 'package:hommey/Notifications/Notifications.dart';
import 'package:hommey/Search/Search.dart';
class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    _goTo(int x){
     switch (x) {
       case 0: Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Cart())); break;
       case 1: Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Notifications())); break;
       case 2: Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Home())); break;
      //  case 3: Navigator.of(context).pushNamed('/cart'); break;
       case 4: Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchF(),)); break;

       default:
     }
   }

    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text('cart'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active),
              title: Text('notification')),
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            title: Text('home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Text('like')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('search')),
        ],type: BottomNavigationBarType.fixed,
        onTap: (int x) => _goTo(x),
      
    );
  }
}