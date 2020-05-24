import 'package:flutter/material.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/profile/Profile_Page.dart';
class DealCustomer extends StatefulWidget {
  @override
  _DealCustomerState createState() => _DealCustomerState();
}

class _DealCustomerState extends State<DealCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dealing',
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
                child: Text('Ordered -> Fish'),
              ),
              
              )

            );
          } 
            
          ),
      ) ,

      bottomNavigationBar: BottomBar(),
      drawer: Drawer(),
      
    );
  }
}