import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffFFFFFF)),
      home: Scaffold(
        appBar: AppBar(
          title: Text('앱제목'),
          centerTitle: false,
        ),
        bottomNavigationBar: Bottom()
        )
      );
  }
}

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const[
        Icon(Icons.phone),
        Icon(Icons.message),
        Icon(Icons.contact_page_rounded)
      ],
    );
  }
}
