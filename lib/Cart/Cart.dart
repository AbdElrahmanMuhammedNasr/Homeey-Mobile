import 'package:flutter/material.dart';
import 'package:hommey/Cart/SingleCart.dart';
import 'package:hommey/Common/AppBarTop.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/profile/Profile_Page.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Map<String, dynamic>> cart = [
    {"image": 'b1.jpg', "name": 'rice', "ordered": '12-5-2017', "chef": 'Ali',"price":"50"},
    {"image": 'b2.jpg', "name": 'meat', "ordered": '12-5-2017', "chef": 'Hassan',"price":"20"},
    {"image": 'b3.jpg', "name": 'Cake', "ordered": '12-5-2017', "chef": 'Tamer',"price":"10"},
  ];

  _goTo(int x) {
    switch (x) {
      case 0:
        Navigator.of(context).pushNamed('/cart');
        break;
      case 1:
        Navigator.of(context).pushNamed('/notifications');
        break;
      case 2:
        Navigator.of(context).pushNamed('/home');
        break;
      //  case 3: Navigator.of(context).pushNamed('/cart'); break;
      //  case 4: Navigator.of(context).pushNamed('/cart'); break;

      default:
    }
  }
  // Divider(color: Colors.black),

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarTop(
          title: 'Cart',
        ),
        body: Container(
          child: PageView(
            scrollDirection: Axis.horizontal,
            children:cart.map((e) => SingleCart(
              image: e["image"],
              name: e["name"],
              price: e["price"],
              ordered: e["ordered"],
              chef: e["chef"],
            )).toList(),
          ),
        ),
        bottomNavigationBar: new BottomBar(),
        drawer: DarwerBar(),
      ),
    );
  }
}
