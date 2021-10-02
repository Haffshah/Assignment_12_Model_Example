import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstListViewPage extends StatefulWidget {
  const FirstListViewPage({Key? key}) : super(key: key);

  @override
  _FirstListViewPageState createState() => _FirstListViewPageState();
}

class _FirstListViewPageState extends State<FirstListViewPage> {
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
          leading: CircleAvatar(
            radius: 20.0,
            backgroundImage: AssetImage("images/harsh.png"),
          ),
          title: Text(
            'Harsh Shah',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            'Flutter Developer',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
