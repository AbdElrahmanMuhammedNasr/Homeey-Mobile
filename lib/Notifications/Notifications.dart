import 'package:flutter/material.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/profile/Profile_Page.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(letterSpacing: 2),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () => { Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProfilePage()))},
          )
       ],
      ),




    body: ListView.builder(itemCount: 50,
          itemBuilder: (BuildContext context,  int pos){
            return Container(
              margin: EdgeInsets.all(10),
              color: Colors.blue,
           child: Column(
              children: <Widget>[
                Container(
                  color: Colors.blue[400],
                  child:ListTile(
                      title:Text('AbdElrahman', style: TextStyle(fontSize: 20, letterSpacing: 1),),
                      subtitle: Text('Just order Rice'),
                      leading: CircleAvatar(radius: 30,backgroundImage: AssetImage('images/2.jpg'),),   
                    ),
                ),
                Container(
                  child:ButtonBar(
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
           
          }),



      bottomNavigationBar: new BottomBar(),

     drawer: DarwerBar(),

    ));
  }
}
