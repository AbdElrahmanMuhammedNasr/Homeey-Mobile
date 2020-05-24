import 'package:flutter/material.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/profile/Profile_Page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

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






      
      body: ListView.builder(itemCount: 30,
          itemBuilder: (BuildContext context,  int pos){
            return
          Card(
            margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.asset(
                      'images/1.jpg',
                    ),
                    Padding(padding: EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.favorite, color: Colors.red,),
                      ),
                    )
                    

                  ],
                ),
               
                ListTile(
                  title: Center(
                    child: Text(
                      'The name of order',
                    ),
                  ),
                  subtitle: Center(
                    child: Text(' 20 EGY.'),
                  ),
                ),
                RaisedButton.icon(
                  color: Colors.green,
                  colorBrightness: Brightness.dark,
                  icon: Icon(
                    Icons.send,
                  ),
                  label: const Text('Order'),
                  onPressed: () {
                    print('object');
                  },
                ),
              ],
            ),
          );  
        }
      ),

      
      bottomNavigationBar: new BottomBar(),
      
       drawer: DarwerBar(),
    ));
  }
}
