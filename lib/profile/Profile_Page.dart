import 'package:flutter/material.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/profile/profile_details.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.red,
                      child: Stack( 
                         children: <Widget>[
                            Image.asset('images/2.jpg',
                              width: double.maxFinite,
                              height: double.maxFinite,
                              fit: BoxFit.fill,
                            ),
                            Container(
                              color: Colors.blue[300].withOpacity(.8),
                            ),
                            SafeArea(
                              child: Padding(padding: EdgeInsets.all(16),
                              child:Column(
                                  children: <Widget>[
                                    Center(
                                      child: Column(
                                        children: <Widget>[
                                            CircleAvatar(
                                              radius: 50,
                                              backgroundImage: AssetImage('images/2.jpg'),
                                            ),
                                           
                                          SizedBox(height: 10,),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Text('AbdElrahman ' ,style: TextStyle(fontSize: 18, letterSpacing: 1, color: Colors.white), ),
                                                  ],
                                                ),
                                                 
                                                 
                                              ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                              )
                            ),
                            ),

                            


                         ],
                       

                      ),
                    ),
                 ),


/********************* second ************************** */

                 Expanded(
                    flex: 6,
                    child: Container(
                      color: Colors.white,
                      child: Table(
                        children: [
                          TableRow(
                            children: [
                              GestureDetector(
                                onTap: (){

                                },
                               child: ProfileDetails(
                                  text: "25",
                                  sub: "your Food",
                                  icon: Icon(Icons.star, color: Colors.blue[300],),
                                ),

                                ),
                                ProfileDetails(
                                  text: "20",
                                  sub: "Customer deal with you",
                                  icon: Icon(Icons.record_voice_over,color: Colors.blue[300],),
                                ),
                              
                              
                            ]
                          ),
                          TableRow(
                            children: [
                              ProfileDetails(
                                text: "15",
                                sub: "Positive Comment",
                                icon: Icon(Icons.comment, color: Colors.blue[300],),
                              ),
                               ProfileDetails(
                                text: "2",
                                sub: "Negative Comment",
                                icon: Icon(Icons.exposure_neg_1,color: Colors.blue[300],),
                              ),
                              
                            ]
                          ),
                          TableRow(
                            children: [
                              ProfileDetails(
                                text: "25",
                                sub: "your Food",
                                icon: Icon(Icons.star, color: Colors.blue[300],),
                              ),
                               ProfileDetails(
                                text: "20",
                                sub: "Customer deal with you",
                                icon: Icon(Icons.record_voice_over,color: Colors.blue[300],),
                              ),
                              
                            ]
                          ),
                           TableRow(
                            children: [
                              ProfileDetails(
                                text: "5",
                                sub: "Rating",
                                icon: Icon(Icons.rate_review, color: Colors.blue[300],),
                              ),
                               ProfileDetails(
                                text: "20",
                                sub: "Customer deal with you",
                                icon: Icon(Icons.record_voice_over,color: Colors.blue[300],),
                              ),
                              
                            ]
                          ),
                         
                        ] ,
                      ),

                    ),
                 ),
              ],
            )


          ],


        ),
        
        bottomNavigationBar: new BottomBar(),
        drawer: DarwerBar(),


    );
  }
}