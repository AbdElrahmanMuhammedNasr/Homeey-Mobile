import 'dart:math';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:hommey/Common/Alert.dart';
import 'package:hommey/Common/AppBarTop.dart';
import 'package:hommey/Common/Bottombar.dart';
import 'package:hommey/Common/DrawerBar.dart';
import 'package:hommey/profile/Profile_Page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _choose = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBarTop(
        title: 'Homeey',
      ),
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, int pos) {
            return Card(
              margin: EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image.asset(
                        'images/1.jpg',
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: _choose == false
                              ? Container(
                                  child: IconButton(
                                      icon: Icon(Icons.favorite_border),
                                      iconSize: 30,
                                      onPressed: () {
                                        setState(() {
                                          _choose = true;
                                        });
                                      }),
                                )
                              : Container(
                                  child: IconButton(
                                      icon: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _choose = false;
                                        });
                                      }),
                                ),
                        ),
                      )
                    ],
                  ),
                  ListTile(
                    title: Center(
                      child: Text(
                        'Fruit Salad',
                        style: TextStyle(
                            fontFamily: 'Raleway', fontWeight: FontWeight.w700),
                      ),
                    ),
                    subtitle: Center(
                      child: Text(
                        ' 20 EGY.',
                        style: TextStyle(
                            fontFamily: 'Raleway', fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  RaisedButton.icon(
                    color: Colors.green,
                    colorBrightness: Brightness.dark,
                    icon: Icon(
                      Icons.send,
                    ),
                    label: const Text(
                      'Order',
                      style: TextStyle(
                          fontFamily: 'Raleway', fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {

                      // final assetsAudioPlayer = AssetsAudioPlayer();
                      // assetsAudioPlayer.open(
                      //   Audio("audios/1.mp3"),
                      // );
                      // assetsAudioPlayer.pause()

                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AlertF(
                          type: 'order',
                        ),
                      ),);
                    },
                  ),
                ],
              ),
            );
          }),
      bottomNavigationBar: new BottomBar(),
      drawer: DarwerBar(),
    ));
  }
}
