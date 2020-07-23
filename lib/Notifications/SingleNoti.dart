import 'package:flutter/material.dart';
import 'package:hommey/Common/Alert.dart';

class SingleNot extends StatefulWidget {
  String name;
  String order;
  String image;
  SingleNot({this.name, this.order, this.image});

  @override
  _SingleNotState createState() => _SingleNotState();
}

class _SingleNotState extends State<SingleNot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.blue[400],
            child: ListTile(
              title: Text(
                '${widget.name}',
                style: TextStyle(
                    fontSize: 20, letterSpacing: 1, color: Colors.white),
              ),
              subtitle: Text(
                'Just order ${widget.order}',
                style: TextStyle(color: Colors.white),
              ),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/${widget.image}'),
              ),
              trailing: Container(
                  child: IconButton(
                      icon: Icon(
                        Icons.report,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AlertF(
                            type: 'Report',
                          ),
                        ));
                      })),
            ),
          ),
          Container(
            color: Colors.blue[400],
            child: ButtonBar(
              children: <Widget>[
                RaisedButton.icon(
                  color: Colors.green,
                  label: Text('Accept'),
                  icon: Icon(Icons.check),
                  onPressed: () {/* ... */},
                ),
                RaisedButton.icon(
                  color: Colors.red,
                  label: Text('Refuse'),
                  icon: Icon(Icons.no_encryption),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
