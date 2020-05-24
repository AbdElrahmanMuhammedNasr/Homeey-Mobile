import 'package:flutter/material.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/profile/Profile_Page.dart';
class PositiveComent extends StatefulWidget {


  @override
  _PositiveComentState createState() => _PositiveComentState();
}

class _PositiveComentState extends State<PositiveComent> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Comments',
          style: TextStyle(letterSpacing: 2),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () => { Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProfilePage()))}
              ),
        ],
      ),

      body:Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder:(BuildContext context,  int pos){
            return Container(
              child: ListTile(
              leading: Image.asset('images/mos.jpg'),
              title: Text('Mostafa'),
              subtitle: Container(
                child: Row(
                  
                  children: <Widget>[
                    Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('You are a great Coder'),
                      )
                      ),
                     Container(
                       margin: EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.star, color: Colors.yellow,)
                      )
                      ),
                  ],
                ),
              ),
              
              )

            );
          } 
            
          ),
      ) ,

      bottomNavigationBar: BottomBar(),
      drawer: DarwerBar(),
      
    );
  }
}