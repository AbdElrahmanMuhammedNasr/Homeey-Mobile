import 'package:flutter/material.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/profile/Profile_Page.dart';

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
      
        home: Scaffold( 
          appBar: AppBar(

            title: Text(
              'Homeey',
              style: TextStyle(letterSpacing: 2),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.account_circle),
                  onPressed: () => { Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProfilePage()))},
              )
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



   
      bottomNavigationBar: new BottomBar(),

      drawer: DarwerBar(),
                
    ),
    );
                         
  }
}