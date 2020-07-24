import 'package:flutter/material.dart';

class CatigoryAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        title: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Add New Catigory'),
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.red,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(

                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Catigory Name',
                      helperText: 'Juice , Sweet ,vegan ..etc',
                      //  border: InputBorder.none,
                       ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                color: Colors.blue,
                colorBrightness: Brightness.dark,
                child: Text(
                  'Add',
                  style: TextStyle(letterSpacing: 1),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
