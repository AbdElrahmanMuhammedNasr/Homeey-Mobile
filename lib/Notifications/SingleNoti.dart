import 'package:flutter/material.dart';
import 'package:hommey/Common/Alert.dart';

class SingleNot extends StatefulWidget {
  String user;
  String order;
  String time;
  String userImage;
  SingleNot({this.user, this.order, this.time, this.userImage});

  @override
  _SingleNotState createState() => _SingleNotState();
}

class _SingleNotState extends State<SingleNot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              child: ListTile(
                title: Text(
                  '${widget.user}',
                  style: TextStyle(
                      fontSize: 20, letterSpacing: 1, color: Colors.black),
                ),
                subtitle: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'ordered ${widget.order}',
                        style: TextStyle(color: Colors.black),
                      ),
                       Text(
                        '${widget.time.substring( widget.time.split(".")[0].length -8).split('.')[0]}',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(widget.userImage),
                ),
                trailing: Container(
                    child: IconButton(
                        icon: Icon(
                          Icons.report,
                          color: Colors.red[300],
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
      ),
    );
  }
}
