import 'package:flutter/material.dart';

class SingleCart extends StatefulWidget {
  String image;
  String name;
  String price;
  String ordered;
  String chef;
  SingleCart({this.image, this.name, this.price, this.ordered, this.chef});

  @override
  _SingleCartState createState() => _SingleCartState();
}

class _SingleCartState extends State<SingleCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      color: Colors.blueAccent,
      child: Card(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Image.asset('images/${widget.image}'),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Center(
                child: Text(
                  '${widget.name}',
                  style: TextStyle(fontSize: 25, letterSpacing: 2),
                ),
              ),
              subtitle: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text('Price : ${widget.price} EGY'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Ordered in :${widget.ordered}'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Chef : ${widget.chef} '),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
