import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var like = [0,0,0];
  var name = ['최원열', '송정균', '김현우'];
  var position;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
          body: ListView.builder(
            itemCount: 3,
            itemBuilder: (c, i) {
              return ListTile(
                leading: Text(like[i].toString()),
                title: Text(name[i]),
                trailing: ElevatedButton(
                  child: Text('좋아요'),
                  onPressed: () {
                    setState(() {
                      position = i;
                      like[i]++;
                    });
                  },
                )
              );
            }
          ),
        )
    );
  }
}
