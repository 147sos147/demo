import 'package:flutter/material.dart';
import 'package:untitled1/audio.dart';
import 'package:untitled1/videoscreen.dart';

class ListVideos extends StatelessWidget {
  //final PlayAudio playAudio;
  const ListVideos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("VIDEO"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideoScreen(url:"assets/thucuoi.mp4")),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              height: 100,
              width: 400,
              //color: Colors.amber,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black45),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'DESPACITO',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideoScreen(url:"assets/same.mp4")),
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
                  Text('BABY SHARK',style: TextStyle(color: Colors.white,fontSize: 30),)
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
                    MaterialPageRoute(builder: (context) => VideoScreen(url:"assets/videos/despacito.mp4")),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  height: 100,
                  width: 400,
                  //color: Colors.amber,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: Colors.black45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ed Sheeran - Shape of You (Lyrics).mp3',
                        style: TextStyle(color: Colors.white, fontSize: 30),
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
                MaterialPageRoute(builder: (context) => VideoScreen(url:"assets/videos/despacito.mp4")),
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
                  Text('BLACKPINK',style: TextStyle(color: Colors.white,fontSize: 30),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}