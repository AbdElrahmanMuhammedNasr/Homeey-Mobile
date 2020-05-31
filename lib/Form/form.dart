import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hommey/Common/AppBarTop.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:image_picker/image_picker.dart';

class FormF extends StatefulWidget {
  @override
  _FormFState createState() => _FormFState();
}

class _FormFState extends State<FormF> {
  String _name;
  double _price;
  String _inger;
  String _dis;
  bool _isSwitched = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBarTop(
          title: 'Add',
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            OutlineButton(
                              borderSide: BorderSide(color: Colors.white),
                              onPressed: () {
                                _openImageOptins();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Add Image',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            _image == null
                                ? Text('Please Pick an image')
                                : Image.file(
                                    _image,
                                    height: 200,
                                    width:
                                        MediaQuery.of(context).size.width / 1.4,
                                    fit: BoxFit.fill,
                                  ),
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                            labelText: 'Name',
                            // hintText: 'Name',
                            prefixIcon: Icon(
                              Icons.nature,
                              color: Colors.white,
                            )),
                        validator: (String val) {
                          if (val.isEmpty) {
                            return 'required';
                          }
                        },
                        onSaved: (String val) {
                          _name = val;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (String val) {
                          if (val.isEmpty) {
                            return 'required';
                          } else if (val.length > 2) {
                            return 'Can not accept this big number';
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                          labelText: 'Price',
                          prefixIcon: Icon(
                            Icons.attach_money,
                            color: Colors.white,
                          ),
                        ),
                        onSaved: (String val) {
                          _price = double.parse(val);
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        validator: (String val) {
                          if (val.isEmpty) {
                            return 'required';
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                          labelText: 'Ingredients',
                          prefixIcon: Icon(
                            Icons.fastfood,
                            color: Colors.white,
                          ),
                        ),
                        onSaved: (String val) {
                          _inger = val;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        validator: (String val) {
                          if (val.isEmpty) {
                            return 'required';
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                          labelText: 'Discribe',
                          prefixIcon: Icon(
                            Icons.details,
                            color: Colors.white,
                          ),
                        ),
                        onSaved: (String val) {
                          _dis = val;
                        },
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('available Now'),
                          Switch(
                              value: _isSwitched,
                              activeColor: Colors.blue[100],
                              onChanged: (val) {
                                setState(() {
                                  _isSwitched = val;
                                });
                              }),
                        ],
                      ),
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      colorBrightness: Brightness.dark,
                      onPressed: () {
                        if (!_formKey.currentState.validate()) {
                          return;
                        }

                        _formKey.currentState.save();

                        final Map<String, dynamic> pro = {
                          'image': _image,
                          'name': _name,
                          'price': _price,
                          'inger': _inger,
                          'dis': _dis,
                          'ava':_isSwitched,
                        };
                        print(pro);
                      },
                      child: Text('Save'),
                    )
                  ],
                )),
          ),
        ),
        drawer: DarwerBar(),
      ),
    );
  }

/**************************************************************************** */
  File _image;
  final picker = ImagePicker();
  Future getImage(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);
    setState(() {
      _image = File(pickedFile.path);
    });
    Navigator.pop(context);
  }

  void _openImageOptins() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            margin: EdgeInsets.all(20),
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton.icon(
                    color: Colors.blueAccent,
                    colorBrightness: Brightness.dark,
                    onPressed: () {
                      getImage(ImageSource.camera);
                    },
                    icon: Icon(Icons.camera_alt),
                    label: Text('Use Camera')),
                RaisedButton.icon(
                    color: Colors.blueAccent,
                    colorBrightness: Brightness.dark,
                    onPressed: () {
                      getImage(ImageSource.gallery);
                    },
                    icon: Icon(Icons.camera),
                    label: Text('Use Gallary')),
              ],
            ),
          );
        });
  }
}
