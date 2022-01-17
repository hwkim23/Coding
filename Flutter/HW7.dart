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
  var name = ["김현우","최원열","이태환"];

  addName(a) {
    setState(() {
      name.add(a);
    });
  }

  @override
  build(context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (c, i){
          return ListTile(
            leading: Image.asset("profile.png"),
            title: Text(name[i]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return DialogUI(addName: addName);
          });
        },
      ),
    );
  }
}

class DialogUI extends StatelessWidget {
  DialogUI({Key? key, this.addName}) : super(key: key);
  final addName;
  var inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(
              controller: inputData,
            ),
            Row(
              children: [
                TextButton(
                  child: Text('취소'),
                  onPressed: (){Navigator.pop(context); },
                ),
                TextButton(
                  child: Text("완료"), onPressed: (){
                    if (inputData.text != "") {
                      return addName(inputData.text);
                    }
                    return Navigator.pop(context);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
