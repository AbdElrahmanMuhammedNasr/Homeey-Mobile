import 'package:flutter/material.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/Common/loading.dart';
import 'package:hommey/Models/user.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PositiveComent extends StatefulWidget {
  @override
  _PositiveComentState createState() => _PositiveComentState();
}

class _PositiveComentState extends State<PositiveComent> {
  final List<Map<String, dynamic>> userComment = [];
  int counter = 0;

  @override
  void initState() {
    super.initState();
    getAllUserComment();
  }

  getAllUserComment() {
    http
        .get('https://hommey-b9aa6.firebaseio.com/Comments.json')
        .then((http.Response res) {
      print('i am in commen functio2');

      final Map<String, dynamic> resData = json.decode(res.body);
      resData.forEach((String id, dynamic data) {
        if (data["chef"] == new User().getUserName()) {
          counter++;
          final obj = {
            "id": id,
            "image": data["image"],
            "chef": data["chef"],
            "name": data["name"].toString().split("@")[0],
            "postedin": data["postedin"],
            "rate": data["rate"],
            "review": data["review"],
          };
          setState(() {
            userComment.add(obj);
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 55,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Comment',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 3,
                              fontFamily: 'Billabong',
                              fontSize: 25,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: SingleChildScrollView(
                child: userComment.isEmpty
                    ? Loading()
                    : Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '${counter}',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Comments',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Raleway'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SingleChildScrollView(
                                child: userComment
                                    .map((e) => SingleComment(e["image"],e["name"],e["postedin"],e["rate"],e["review"],  ))
                                    .toList()
                                    )
                          ],
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

Widget SingleComment(image, name, postedin, rate, review) {
  return Container(
    child: ListTile(
      leading: Image.network(image),
      title: Text('${name.split("@")[0]}'),
      subtitle: Container(
        child: Row(
          children: <Widget>[
            Container(
                child: Align(
              alignment: Alignment.centerLeft,
              child: Text(review),
            )),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
