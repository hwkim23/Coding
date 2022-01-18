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
  var name = ["하현우","최원열","이태환"];
  var telephone = ["01011112222","01012345678","01088889999"];
  var isDescending = false;

  addName(a) {
    setState(() {
      name.add(a);
    });
  }

  @override
  build( context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: TextButton.icon(
              icon: RotatedBox(
                quarterTurns: 1,
                child: Icon(Icons.compare_arrows, size: 28),
              ),
              label: Text(
                isDescending ? "역순으로 정렬" : "순서대로 정렬",
                style: TextStyle(fontSize: 16),),
              onPressed: () => setState(() => isDescending = !isDescending),
            ),
          ),
          Expanded(
              child: buildList(),
          ),
        ],
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
  Widget buildList() => ListView.builder(
    itemCount: name.length,
    itemBuilder: (c, i) {
        final sortedName = name
          ..sort((a, b) => isDescending ? b.compareTo(a) : a.compareTo(b));
        final item = sortedName[i];

      return ListTile(
        leading: Image.asset("profile.png"),
        title: Text(item),
        subtitle: Text(telephone[i]),
        trailing: ElevatedButton(
          child: Text("삭제"),
          onPressed: (){
            setState(() {
              name.remove(name[i]);
            });
          },
        ),
      );
    },
  );
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
