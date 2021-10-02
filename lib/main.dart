import 'package:assignment12/Bottombar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottombarScreen(),
    );
  }
}
// Scaffold(
// appBar:AppBar(title: Text('Model Example'),),
// bottomNavigationBar: BottomAppBar(
// child: Text('bottombar'),
// color: Colors.deepPurpleAccent,
// ),
// body: BottombarScreen(),
// );