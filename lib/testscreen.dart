import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/detailScreeen.dart';
import 'package:untitled1/listvideos.dart';
import 'package:untitled1/model.dart';
import 'package:untitled1/paragraph.dart';


class TestScreen extends StatelessWidget {
  final List<Paragraph> paragraph;
  final List<Conversation> conversation;
  final List<Vocabulary> vocabulary;
  const TestScreen(this.vocabulary,this.paragraph,this.conversation);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
         title: Text("COURSE"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen(vocabulary)),
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
                    'VOCABULARY',
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
                MaterialPageRoute(builder: (context) => Paragraph1(paragraph)),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              height: 100,
              width: 400,
             // color: Colors.black45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('PARAGRAPH',style: TextStyle(color: Colors.black,fontSize: 30),)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListVideos(conversation)),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              height: 100,
              width: 400,
              // color: Colors.black45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('CONVERSITOPN',style: TextStyle(color: Colors.black,fontSize: 30),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
