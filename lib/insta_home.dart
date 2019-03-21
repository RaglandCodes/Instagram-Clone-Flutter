import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_body.dart';

class InstaHome extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: Colors.white30,
    centerTitle: true,
    elevation: 2,
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35,
      child: Image.asset("assets/images/insta_logo.png"),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Icon(Icons.send),
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: Container(
        height: 50,
        child: BottomAppBar(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
            ),
            IconButton(
              icon: Icon(Icons.search),
            ),
            IconButton(
              icon: Icon(Icons.add_box),
            ),
            IconButton(
              icon: Icon(Icons.account_box),
            ),
          ],
        )),
      ),
    );
  }
}
