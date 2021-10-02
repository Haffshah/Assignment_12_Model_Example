import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondListViewPage extends StatefulWidget {
  const SecondListViewPage({Key? key}) : super(key: key);

  @override
  _SecondListViewPageState createState() => _SecondListViewPageState();
}

class _SecondListViewPageState extends State<SecondListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: ListView(
        children: [
          NewWidgetListTIle(),
          NewWidgetListTIle(),
          NewWidgetListTIle(),
          NewWidgetListTIle(),
          NewWidgetListTIle(),
          NewWidgetListTIle(),
          NewWidgetListTIle(),
          NewWidgetListTIle(),
          NewWidgetListTIle(),
          NewWidgetListTIle(),
          NewWidgetListTIle(),
          NewWidgetListTIle(),
          NewWidgetListTIle(),
          NewWidgetListTIle(),
        ],
      ),
    );
  }
}

class NewWidgetListTIle extends StatelessWidget {
  const NewWidgetListTIle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black,

            borderRadius: BorderRadius.circular(14.0)),
        padding: EdgeInsets.all(8.0),
        width: 120.0,
        height: 80.0,
        child: ListTile(
          selectedTileColor: Colors.blue,
          leading: CircleAvatar(
            radius: 20.0,
            backgroundImage: AssetImage("images/harsh.png"),
          ),
          title: Text(
            'Harsh Shah',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            'Web Developer',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
