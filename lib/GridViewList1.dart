import 'package:assignment12/Model/ModelData.dart';
import 'package:flutter/material.dart';

class FirstGridViewList extends StatefulWidget {
  const FirstGridViewList({Key? key}) : super(key: key);

  @override
  _FirstGridViewListState createState() => _FirstGridViewListState();
}

class _FirstGridViewListState extends State<FirstGridViewList> {
  List<ModelData> myList = arrayofData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: Text("Student Info"),
      ),
      body: GridViewWidget(myList: myList),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    Key? key,
    required this.myList,
  }) : super(key: key);

  final List<ModelData> myList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 220,
          maxCrossAxisExtent: 300),
      itemCount: myList.length,
      itemBuilder: (ctx, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridTile(
            header: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 50.0, 8.0, 10.0),
              child: Image.asset(
                myList[index].image ?? "",
                fit: BoxFit.contain,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(14.0)),
              padding: EdgeInsets.all(8.0),
              child: Text(
                myList[index].title ?? "",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            footer: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  myList[index].subTitle ?? "",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(14.0)),
            ),
          ),
        );
      },
    );
  }
}
