import 'package:flutter/material.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

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
              onPressed: () => print('object')),
          // IconButton(icon: Icon(Icons.settings), onPressed: ()=> print('object')),
        ],
      ),










      
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'images/1.jpg',
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
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'images/1.jpg',
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
                  icon: Icon(Icons.send),
                  label: const Text('Order'),
                  onPressed: () {
                    print('object');
                  },
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'images/1.jpg',
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
                  icon: Icon(Icons.send),
                  label: const Text('Order'),
                  onPressed: () {
                    print('object');
                  },
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'images/1.jpg',
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
                  icon: Icon(Icons.send),
                  label: const Text('Order'),
                  onPressed: () {
                    print('object');
                  },
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'images/1.jpg',
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
                  icon: Icon(Icons.send),
                  label: const Text('Order'),
                  onPressed: () {
                    print('object');
                  },
                ),
              ],
            ),
          ),
        ],
      )),

      
      bottomNavigationBar: new BottomBar(),
      
       drawer: DarwerBar(),
    ));
  }
}
