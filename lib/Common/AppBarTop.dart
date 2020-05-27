import 'package:flutter/material.dart';
import 'package:hommey/Common/Alert.dart';
import 'package:hommey/profile/Profile_Page.dart';

class AppBarTop extends StatelessWidget with PreferredSizeWidget {
  
  String title;
  AppBarTop({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(letterSpacing: 2),
      ),
      actions: <Widget>[
        IconButton(
          icon: title == 'Profile'? Icon(Icons.block, color: Colors.red,) :Icon(Icons.account_circle),
          onPressed: () => {
            title == 'Profile'?
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => AlertF(type: 'Block',),))
           :Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ProfilePage()))
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
