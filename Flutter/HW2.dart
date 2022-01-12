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
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Row(
            children: const [
              Text('금호동3가', style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),),
              IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.black,
                  size: 25,
                ),
                onPressed: null,
              ),
            ],
          ),
          actions: <Widget> [
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
        body: SizedBox(
          height: 160,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                width: 150,
                height: 140,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Image border
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(48), // Image radius
                    child: Image.asset('camera.png', fit: BoxFit.cover),
                  ),
                )
              ),
              SizedBox(
                //color: Colors.black,
                width: 350,
                height: 140,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 63, 0),
                      child: Text(
                          '캐논 DSLR 100D (단렌즈,',
                          style: TextStyle(color: Colors.black, fontSize: 20, letterSpacing: 1.3, wordSpacing: 1.5, fontWeight: FontWeight.w500)
                      ),
                    ),
                    Container(
                      //color: Colors.blue,
                      padding: EdgeInsets.fromLTRB(0, 0, 90, 0),
                      child: Text(
                          '충전기 16기가SD 포함)',
                          style: TextStyle(color: Colors.black, fontSize: 20, letterSpacing: 1.3, wordSpacing: 1.5, fontWeight: FontWeight.w500)
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 3, 110, 0),
                      child: Text(
                          '성동구 행당동 . 끌올 10분 전',
                          style: TextStyle(color: Color(0xFF8C8C8C), fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.5)
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 3, 217, 0),
                      child: Text(
                          '210,000원',
                          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w800, letterSpacing: 1.3)
                      ),
                    ),
                    Row (
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('heart.png'),
                        Container(
                          padding: EdgeInsets.fromLTRB(2, 0, 40, 0),
                          child: Text('4', style: TextStyle(color: Color(0xff5e5e5e))),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
