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
  var name = ["김현우","최원열","이태환"];

  @override
  build(context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (c, i){
          return ListTile(
            leading: Text(like[i].toString()),
            title: Text(name[i]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return DialogUI();
          });
        },
      ),
    );
  }
}

class DialogUI extends StatelessWidget {
  const DialogUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(),
            TextButton(
              child: Text('완료'), onPressed: (){},
            ),
            TextButton(
              child: Text('취소'),
              onPressed: (){Navigator.pop(context); },
            )
          ],
        ),
      ),
    );
  }
}
