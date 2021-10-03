import 'package:assignment12/Model/FoodModel.dart';

import 'package:assignment12/SecondGirdViewList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondListViewPage extends StatefulWidget {
  const SecondListViewPage({Key? key}) : super(key: key);

  @override
  _SecondListViewPageState createState() => _SecondListViewPageState();
}

class _SecondListViewPageState extends State<SecondListViewPage> {
  List<FoodModel> myList = arrayofFoodData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(8.0),
              width: 120.0,
              height: 80.0,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondGridViewList()),
                  );
                },
                leading: CircleAvatar(
                  radius: 45.0,
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage(myList[index].image ?? " "),
                ),
                title: Text(
                  myList[index].title ?? " ",
                ),
                subtitle: Text(
                  myList[index].price ?? " ",
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xffF6B042),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
