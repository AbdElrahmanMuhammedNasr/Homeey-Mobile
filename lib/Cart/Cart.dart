import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
     _goTo(int x){
     switch (x) {
       case 0: Navigator.of(context).pushNamed('/cart'); break;
       case 1: Navigator.of(context).pushNamed('/notifications'); break;
       case 2: Navigator.of(context).pushNamed('/home'); break;
      //  case 3: Navigator.of(context).pushNamed('/cart'); break;
      //  case 4: Navigator.of(context).pushNamed('/cart'); break;

       default:
     }
   }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
        home: Scaffold( appBar: AppBar(

            title: Text(
              'Homeey',
              style: TextStyle(letterSpacing: 2),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.account_circle),
                  onPressed: () => print('object')),
              // IconButton(icon: Icon(Icons.settings), onPressed: ()=> print('object')),
            ],
          ),





      
          body: Container(

           child:  PageView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[

              Container(
                width: 160.0,
                color: Colors.blueAccent,
               child: Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[ 
                        Image.asset('images/1.jpg'),
                         ListTile(
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
              ),
              Container(
                width: 160.0,
                color: Colors.blueAccent,
                child: Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[ 
                        Image.asset('images/1.jpg'),
                         ListTile(
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
              ),
              Container(
                width: 160.0,
                color: Colors.blueAccent,
                child: Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[ 
                        Image.asset('images/1.jpg'),
                         ListTile(
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
              ),
              
            ],
          ),
                    
        ),




        

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text('cart'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active),
              title: Text('notification')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Text('like')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('search')),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (int x) => _goTo(x),
      ),


      drawer: Drawer(
          child: Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton.icon(
                    onPressed: () => print('object'),
                    color: Colors.blue[400],
                    colorBrightness: Brightness.dark,
                    icon: Icon(Icons.settings),
                    label: Text('Setting'),
                  ),
                  RaisedButton.icon(
                    onPressed: () => Navigator.of(context).pushNamed('/login'),
                    color: Colors.red,
                    colorBrightness: Brightness.dark,
                    icon: Icon(Icons.outlined_flag),
                    label: Text('Logout'),
                  ),
                ],
              ))),
                
    ),
    );
                         
  }
}