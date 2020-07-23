import 'package:flutter/material.dart';
import 'package:hommey/Common/Alert.dart';

class SingleFood extends StatefulWidget {
  String image;
  String name;
  int price;

  SingleFood({this.image, this.name, this.price});

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
              Image.asset('images/${widget.image}'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    child: IconButton(
                        icon: Icon(Icons.info, color: Colors.blue,),
                        onPressed: () {
                          print('object');
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: _choose == false
                          ? Container(
                              child: IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  iconSize: 25,
                                  onPressed: () {
                                    setState(() {
                                      _choose = true;
                                    });
                                  }),
                            )
                          : Container(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _choose = false;
                                    });
                                  }),
                            ),
                    ),
                  )
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
