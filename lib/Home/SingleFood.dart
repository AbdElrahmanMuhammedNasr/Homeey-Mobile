import 'package:flutter/material.dart';
import 'package:hommey/Common/Alert.dart';
import 'package:hommey/Details/Details.dart';
import 'package:hommey/Like/Like.dart';

class SingleFood extends StatefulWidget {
  String id;
  String image;
  String name;
  String price;

  String category;
  String address;
  String email;
  String inger;
  String dis;
  String time;

  SingleFood({this.time,this.id, this.image, this.name, this.price, this.address, this.category,this.dis, this.email, this.inger});

  @override
  _SingleFoodState createState() => _SingleFoodState();
}

class _SingleFoodState extends State<SingleFood> {
  bool _choose = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      margin: EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.network(widget.image),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    child: IconButton(
                        icon: Icon(
                          Icons.info,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Details(
                                      id: widget.id,
                                      image: widget.image,
                                      name: widget.name,
                                      price: widget.price,
                                      category: widget.category,
                                      address: widget.address,
                                      email: widget.email,
                                      inger: widget.inger,
                                      dis: widget.dis,
                                      time: widget.time,
                                    )),
                          );
                        }),
                  ),
                  
                ],
              )
            ],
          ),
          ListTile(
            title: Center(
              child: Text(
                "${widget.name}",
                style: TextStyle(
                    fontFamily: 'Raleway', fontWeight: FontWeight.w700),
              ),
            ),
            subtitle: Center(
              child: Text(
                '${widget.price} \$',
                style: TextStyle(
                    fontFamily: 'Raleway', fontWeight: FontWeight.w700),
              ),
            ),
          ),
          RaisedButton.icon(
            color: Colors.green,
            colorBrightness: Brightness.dark,
            icon: Icon(
              Icons.send,
            ),
            label: const Text(
              'Order',
              style:
                  TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.w700),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AlertF(
                    type: 'order',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ));
  }
}
