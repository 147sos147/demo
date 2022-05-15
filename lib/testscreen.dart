import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Login.dart';
import 'package:untitled1/audio.dart';
import 'package:untitled1/audioclass.dart';
import 'package:untitled1/detailScreeen.dart';
import 'package:untitled1/listvideos.dart';
import 'package:untitled1/paragraph.dart';
import 'package:untitled1/videoscreen.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
         title: Text("HOME APP"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            OutlineButton.icon(
              color: Colors.pink,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                icon: Icon(Icons.offline_bolt_outlined),
                label: Text('ĐĂNG XUẤT')),
          ]
          ),
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
              width: 400,
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
                MaterialPageRoute(builder: (context) => Paragraph()),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              height: 100,
              width: 400,
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
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Audio()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  height: 100,
                  width: 400,
                  //color: Colors.amber,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: Colors.blue),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AUDIO',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListVideos()),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              height: 100,
              width: 400,
              // color: Colors.black45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black45),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('VIDEO',style: TextStyle(color: Colors.white,fontSize: 30),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
