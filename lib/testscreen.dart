import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/detailScreeen.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("HOME APP"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              height: 100,
              width: 175,
              //color: Colors.amber,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'TỪ MỚI',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              height: 100,
              width: 175,
             // color: Colors.black45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black45),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('DOẠN VĂN',style: TextStyle(color: Colors.white,fontSize: 30),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
