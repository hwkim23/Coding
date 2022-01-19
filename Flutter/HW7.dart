import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  List<String> name = ["김현우","최원열","이태환"];

  @override
  State<MyApp> createState() => _MyAppState();

}
class _MyAppState extends State<MyApp> {

  var telephone = ["01011112222","01012345678","01088889999"];

  addName(a) {
    setState(() {
      widget.name.add(a);
    });
  }

  void reorderData(int oldindex, int newindex){
    setState(() {
      if(newindex>oldindex){
        newindex-=1;
      }
      final items =widget.name.removeAt(oldindex);
      widget.name.insert(newindex, items);
    });
  }

  void sorting(){
    setState(() {
      widget.name.sort();
    });
  }

  @override
  build( context) {
    return Scaffold(
      appBar: AppBar(
          actions: <Widget>[
            IconButton(icon: Icon(Icons.sort_by_alpha),
                tooltip:"Sort",
                onPressed: sorting
            ),
          ]
      ),
      body: ReorderableListView(
        children: <Widget>[
          for(final items in widget.name)
            Card(
              key: ValueKey(items),
              elevation: 2,
              child: ListTile(
                title: Text(items),
                leading: Image.asset("profile.png"),
              ),
            ),
            ],
            onReorder: reorderData,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return DialogUI(addName: addName);
          },);
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
                      addName(inputData.text);
                    }
                    Navigator.pop(context);
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
