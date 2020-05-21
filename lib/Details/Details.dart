import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(
              child:Column(
                children: <Widget>[
                    Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              )
                            ),
                            child: Image.asset('images/1.jpg'),
                          )
                        ],
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Container(
                        child: Column(
                          children: <Widget>[
                            Text('Fruit Salad', style: TextStyle(fontSize: 20, color: Colors.black, letterSpacing: 2),),
                            Padding(padding: EdgeInsets.all(10)),
                            Container(
                              margin: EdgeInsets.only(left: 15, right: 15),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                        child : Row(
                                        children: <Widget>[
                                          Icon(Icons.location_on,color: Colors.blue,),
                                          Text('34 st - kafr Elzayat - Tanta', style: TextStyle(fontSize: 20, color: Colors.black),),
                                        ],
                                      ),
                                    )
 ,
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 30)),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.yellow.withOpacity(0.9),
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    padding: EdgeInsets.all(2),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                        child : Row(
                                        children: <Widget>[
                                          Icon(Icons.timer, color: Colors.green,),
                                          Text('Avilable', style: TextStyle(fontSize: 20,letterSpacing: 1 ,color: Colors.green),),
                                        ],
                                      ),
                                    )
                                  ),
                                  
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Center(
                                child:Icon(Icons.star,color: Colors.yellow,)
                              ),
                            )
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