import 'package:flutter/material.dart';
import 'package:hommey/Common/Alert.dart';
import 'package:hommey/Models/user.dart';
import 'package:hommey/Search/Search.dart';
import 'package:hommey/profile/Profile_Page.dart';

class AppBarTop extends StatelessWidget with PreferredSizeWidget {
  String title;
  AppBarTop({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
            letterSpacing: 3,
            fontFamily: 'Billabong',
            fontWeight: FontWeight.w300),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SearchF(),
                ),
              );
            }),
        IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () => {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProfilePage(name: User().getUserName()),
              ),
            )
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
