import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AlertF extends StatelessWidget {
    String type;
    AlertF({this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        title: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              //  Align(alignment: Alignment.centerRight,child: Icon(Icons.close, color: Colors.red,)),
               Align(alignment: Alignment.centerLeft,child: Text('${type} confirm')),
            ],
          ),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('This is a ${type} alert .'),
              SizedBox(
                height: 10,
              ),
              Text('Would you like to approve of this Action?'),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                color: Colors.blue,
                colorBrightness: Brightness.dark,
                child: Text(
                  'Approve',
                  style: TextStyle(letterSpacing: 1),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
        // actions: <Widget>[
        //   FlatButton(
        //     child: Text('Approve'),
        //     onPressed: () {
        //       Navigator.of(context).pop();
        //     },
        //   ),
        // ],
      ),
    );
  }
}
