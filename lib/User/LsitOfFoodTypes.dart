import 'package:flutter/material.dart';
import 'package:hommey/Details/Details.dart';

class ListOfFood extends StatefulWidget {
  String type;
  ListOfFood({this.type});
  @override
  _ListOfFoodState createState() => _ListOfFoodState();
}

class _ListOfFoodState extends State<ListOfFood> {
  List<Map<String, dynamic>> foodList = [
    {"id": "1", "image": 'b1.jpg', "name": 'rice', "price": '12'},
    {"id": "2", "image": 'b2.jpg', "name": 'rice', "price": '10'},
    {"id": "3", "image": 'b3.jpg', "name": 'rice', "price": '15'},
    {"id": "4", "image": '1.jpg', "name": 'rice', "price": '30'},
    {"id": "6", "image": '2.jpg', "name": 'rice', "price": '30'},
    {"id": "7", "image": 'b2.jpg', "name": 'rice', "price": '10'},
    {"id": "8", "image": 'b3.jpg', "name": 'rice', "price": '15'},
    {"id": "9", "image": '1.jpg', "name": 'rice', "price": '30'},
    {"id": "10", "image": '2.jpg', "name": 'rice', "price": '30'},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.type}',
          style: TextStyle(
              letterSpacing: 3,
              fontFamily: 'Billabong',
              fontWeight: FontWeight.w300),
        ),
        leading: Icon(Icons.arrow_back),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: foodList
              .map((e) => food(context, e["id"],e["image"], e["name"], e['price']))
              .toList()),
    );
  }
}

Widget food(context, id,image, name, price) {
  double heightC = MediaQuery.of(context).size.width;
  print(heightC);

  return Container(
    width: 200,
    child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Details(
              id: '${id}',
            ),
          ));
        },
        child: Card(
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(10),
                  height: heightC / 4,
                  child: Image.asset('images/${image}')),
              ListTile(
                title: Text('Name  : ${name}'),
                subtitle: Text('Price : ${price} EGP'),
              ),
            ],
          ),
        )),
  );
}
