import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

          body: SingleChildScrollView(
              child:Column(
                children: <Widget>[
                   Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[ 
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/2.jpg'),
                        ),
                         ListTile(
                          title: Center(child: Text('Abdo want  to order' ,) ,),
                          subtitle: Center(child:Text('this  rice') ,) ,
                        ),
                       ButtonBar(
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
                    ],
                    ),
                  ),




            Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      // mainAxisSize: MainAxisSize.,
                      children: <Widget>[ 
                        // Image.asset('images/1.jpg',),
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/2.jpg'),
                        ),
                         ListTile(
                          title: Center(child: Text('Abdo want  to order' ,) ,),
                          subtitle: Center(child:Text('this  rice') ,) ,
                        ),
                       ButtonBar(
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
                    ],
                    ),
                  ),





                   Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      // mainAxisSize: MainAxisSize.,
                      children: <Widget>[ 
                        // Image.asset('images/1.jpg',),
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/2.jpg'),
                        ),
                         ListTile(
                          title: Center(child: Text('Abdo want  to order' ,) ,),
                          subtitle: Center(child:Text('this  rice') ,) ,
                        ),
                       ButtonBar(
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
                    ],
                    ),
                  ),






                   Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      // mainAxisSize: MainAxisSize.,
                      children: <Widget>[ 
                        // Image.asset('images/1.jpg',),
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/2.jpg'),
                        ),
                         ListTile(
                          title: Center(child: Text('Abdo want  to order' ,) ,),
                          subtitle: Center(child:Text('this  rice') ,) ,
                        ),
                       ButtonBar(
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
                    ],
                    ),
                  ),







                   Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      // mainAxisSize: MainAxisSize.,
                      children: <Widget>[ 
                        // Image.asset('images/1.jpg',),
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/2.jpg'),
                        ),
                         ListTile(
                          title: Center(child: Text('Abdo want  to order' ,) ,),
                          subtitle: Center(child:Text('this  rice') ,) ,
                        ),
                       ButtonBar(
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
                    ],
                    ),
                  ),




                   Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      // mainAxisSize: MainAxisSize.,
                      children: <Widget>[ 
                        // Image.asset('images/1.jpg',),
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/2.jpg'),
                        ),
                         ListTile(
                          title: Center(child: Text('Abdo want  to order' ,) ,),
                          subtitle: Center(child:Text('this  rice') ,) ,
                        ),
                       ButtonBar(
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
                    ],
                    ),
                  ),


                ],
                
              ) 
                         
          ),

       

      
    )
    );
  }
}