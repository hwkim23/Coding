import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Container(
            child: Text('금호동3가', style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),),
          ),
          actions: <Widget> [
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 170, 0),
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.black,
                  size: 25,
                ),
                onPressed: null,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: null,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: IconButton(
                icon: Icon(
                  Icons.list,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: null,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: IconButton(
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: null,
              ),
            ),
          ]
        ),
      )
    );
  }
}
