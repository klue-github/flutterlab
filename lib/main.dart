import 'package:flutter/material.dart';

void main() async{
  runApp(
    MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 1, // 그림자 size
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 25),
          actionsIconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var tab = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('instagram'),),
      body: [Container(child:Text('1')), SizedBox(child:Text('2'))][tab],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, //라벨 없애는 방법
        showUnselectedLabels: false,
        onTap: (i) {
          //버튼을 누르면 i의 값이 변한다!
          setState(() {
            tab = i;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: '샵'),
        ],
      ),
    );
  }
}