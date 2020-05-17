import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
                          radius: 50,
                          backgroundImage: AssetImage('images/1.jpg'),
                        ),
                         ListTile(
                           enabled: true,
                          title: Center(child: Text(' Rice' ,) ,),
                          subtitle: Center(child:Column(
                            children: <Widget>[
                              Text('20 EGY') ,
                              Text('2020-10-5') ,
                              Text('Tamer') ,
                            ],
                          )) ,
                        ),
                    ],
                    ),
                  ),

                   Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[ 
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/1.jpg'),
                        ),
                         ListTile(
                           enabled: true,
                          title: Center(child: Text(' Rice' ,) ,),
                          subtitle: Center(child:Column(
                            children: <Widget>[
                              Text('20 EGY') ,
                              Text('2020-10-5') ,
                              Text('Tamer') ,
                            ],
                          )) ,
                        ),
                    ],
                    ),
                  ),


                   Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[ 
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/1.jpg'),
                        ),
                         ListTile(
                           enabled: true,
                          title: Center(child: Text(' Rice' ,) ,),
                          subtitle: Center(child:Column(
                            children: <Widget>[
                              Text('20 EGY') ,
                              Text('2020-10-5') ,
                              Text('Tamer') ,
                            ],
                          )) ,
                        ),
                    ],
                    ),
                  ),


                   Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[ 
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/1.jpg'),
                        ),
                         ListTile(
                           enabled: true,
                          title: Center(child: Text(' Rice' ,) ,),
                          subtitle: Center(child:Column(
                            children: <Widget>[
                              Text('20 EGY') ,
                              Text('2020-10-5') ,
                              Text('Tamer') ,
                            ],
                          )) ,
                        ),
                    ],
                    ),
                  ),

                   Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[ 
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/1.jpg'),
                        ),
                         ListTile(
                           enabled: true,
                          title: Center(child: Text(' Rice' ,) ,),
                          subtitle: Center(child:Column(
                            children: <Widget>[
                              Text('20 EGY') ,
                              Text('2020-10-5') ,
                              Text('Tamer') ,
                            ],
                          )) ,
                        ),
                    ],
                    ),
                  ),




                ]
    
          )
                
        )
                
    ),
    );
                         
  }
}