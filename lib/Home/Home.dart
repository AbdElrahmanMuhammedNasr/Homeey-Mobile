import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  
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
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[ 
                        Image.asset('images/1.jpg',),
                         ListTile(
                          title: Center(child: Text('The name of order' ,) ,),
                          subtitle: Center(child:Text(' 20 EGY.') ,) ,
                        ),
                        RaisedButton.icon(
                          icon: Icon(Icons.send),
                          label: const Text('Order'),
                          onPressed: () { print('object');},
                          ),
                           
                          
                      ],
                    ),
                  ),



                   Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[ 
                        Image.asset('images/1.jpg',),
                         ListTile(
                          title: Center(child: Text('The name of order' ,) ,),
                          subtitle: Center(child:Text(' 20 EGY.') ,) ,
                        ),
                        RaisedButton.icon(
                          icon: Icon(Icons.send),
                          label: const Text('Order'),
                          onPressed: () { print('object');},
                          ),
                           
                          
                      ],
                    ),
                  ),



                   Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[ 
                        Image.asset('images/1.jpg',),
                         ListTile(
                          title: Center(child: Text('The name of order' ,) ,),
                          subtitle: Center(child:Text(' 20 EGY.') ,) ,
                        ),
                        RaisedButton.icon(
                          icon: Icon(Icons.send),
                          label: const Text('Order'),
                          onPressed: () { print('object');},
                          ),
                           
                          
                      ],
                    ),
                  ),



                   Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[ 
                        Image.asset('images/1.jpg',),
                         ListTile(
                          title: Center(child: Text('The name of order' ,) ,),
                          subtitle: Center(child:Text(' 20 EGY.') ,) ,
                        ),
                        RaisedButton.icon(
                          icon: Icon(Icons.send),
                          label: const Text('Order'),
                          onPressed: () { print('object');},
                          ),
                           
                          
                      ],
                    ),
                  ),



                   Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[ 
                        Image.asset('images/1.jpg',),
                         ListTile(
                          title: Center(child: Text('The name of order' ,) ,),
                          subtitle: Center(child:Text(' 20 EGY.') ,) ,
                        ),
                        RaisedButton.icon(
                          icon: Icon(Icons.send),
                          label: const Text('Order'),
                          onPressed: () { print('object');},
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