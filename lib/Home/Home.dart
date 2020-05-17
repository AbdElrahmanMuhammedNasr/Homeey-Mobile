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
          appBar:AppBar(
            // backgroundColor: Colors.white12,
            title: Text('Homeey', style: TextStyle(letterSpacing: 2),),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.account_circle), onPressed: ()=> print('object')),
              IconButton(icon: Icon(Icons.settings), onPressed: ()=> print('object')),

            ],
          ) ,

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

        bottomNavigationBar: BottomNavigationBar(items:[
            BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart) , title: Text('data')),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_active) , title: Text('data')),
            BottomNavigationBarItem(icon: Icon(Icons.home) , title: Text('home')),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border) , title: Text('data')),
            BottomNavigationBarItem(icon: Icon(Icons.search) , title: Text('search')),
        ], type: BottomNavigationBarType.fixed,
          onTap: (int x) => print('object $x'),
      ),

      
    )
    );
  }
}