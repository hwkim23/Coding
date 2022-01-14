import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
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
  final _textFieldController = TextEditingController();
  var valueText;
  var codeDialog;
  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Contact'),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  valueText = value;
                });
              },
              controller: _textFieldController,
            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(primary: Colors.blue),
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(primary: Colors.blue),
                child: Text('OK'),
                onPressed: () {
                  codeDialog = valueText;
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  @override
  build(context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            _displayTextInputDialog(context);
          }
      ),
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
    );


  }
}
