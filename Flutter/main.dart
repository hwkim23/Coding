import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var a = Row(
  children: const [
    Icon(Icons.person_pin),
    Text('홍길동')
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffFFFFFF)),
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            a,
            a,
            a
          ],
        ),
      )
    );
  }
}
