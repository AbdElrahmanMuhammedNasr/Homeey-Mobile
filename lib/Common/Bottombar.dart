import 'package:flutter/material.dart';
import 'package:hommey/Cart/Cart.dart';
import 'package:hommey/Form/form.dart';
import 'package:hommey/Home/Home.dart';
import 'package:hommey/Like/Like.dart';
import 'package:hommey/Notifications/Notifications.dart';
import 'package:hommey/Search/Search.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    var _index;
    _goTo(int x) {
      setState(() {
        _index = x;
      });

      switch (x) {
        case 0:
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Cart()));
          break;
        case 1:
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Notifications()));
          break;
        // case 2:

        //   break;

        case 3:
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Home()));
          break;
        case 4:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Like(),
          ));
          break;
      }
    }

    return SizedBox(
      // height: 100,
      child: BottomNavigationBar(
        // selectedItemColor: Colors.red,
        // unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active), title: Text('notifications ')),
          BottomNavigationBarItem(
            title: Text('Add'),
            icon: FlatButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => FormF()));
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Text('Liked')),
        ],
        currentIndex: _index == null ? 0 : _index,
        type: BottomNavigationBarType.fixed,
        onTap: (int x) => _goTo(x),
      ),
    );
  }
}
