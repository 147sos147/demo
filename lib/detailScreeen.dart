// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:untitled1/Login.dart';
// import 'package:untitled1/listView.dart';
//
// class DetailScreen extends StatelessWidget {
//   DetailScreen({Key? key}) : super(key: key);
//   final List _posts=[
//     'bai 1',
//     'bai 2',
//     'bai 3',
//     'bai 4',
//   ];
//
//   @override
//   Widget build(BuildContext context) =>Scaffold(
//     // appBar: AppBar(
//     //   title: Text('CHỨC NĂNG APP'),
//     //   centerTitle: true,
//     // ),
//     body: Column(
//       children: [
//         Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 100,
//                 width: 100,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.pink,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 100,
//                 width: 100,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.pink,
//                 ),
//               ),
//             ),
//           ],
//         ),
//
//         Expanded(
//           child: ListView.builder(
//             itemCount: _posts.length,
//             itemBuilder: (context, index){
//               return LstView(child: _posts[index],);
//   }
//           ),
//         ),
//       ],
//     ),
//   );
// }

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Login.dart';
import 'package:untitled1/flashcard.dart';
import 'package:untitled1/flashcard_view.dart';
import 'package:untitled1/testscreen.dart';

class DetailScreen extends StatefulWidget{
  @override
  _DetailScreenState createState() => _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen>{
// class DetailScreen extends StatelessWidget {
   //DetailScreen({Key? key}) : super(key: key);
  List<Flashcard> _flashcard =[
    Flashcard(question: "map",
        answer: "bản đồ",imageUrl: 'assets/bando.jpg'),
    Flashcard(question: "computer",
        answer: "máy tính",imageUrl: 'assets/maytinh.jpg'),
    Flashcard(question: "Bed",
        answer: "giường ngủ",imageUrl: 'assets/caigiuong.jpg'),
    Flashcard(question: "Fan",
        answer: "cái quạt",imageUrl: 'assets/caiquat.jpg'),
    Flashcard(question: "Clock",
        answer: "đồng hồ",imageUrl: 'assets/dongho.jpg'),
    Flashcard(question: "Chair",
        answer: "cái ghế",imageUrl: 'assets/caighe.jpg'),
    Flashcard(question: "Bookshelf",
        answer: "kệ sách",imageUrl: 'assets/kesach.jpg'),
    Flashcard(question: "Picture",
        answer: "bức tranh",imageUrl: 'assets/buctranh.jpg'),
    Flashcard(question: "Close",
        answer: "tủ đồ",imageUrl: 'assets/tudo.jpg'),
    Flashcard(question: "Wardrobe",
        answer: "tủ quần áo",imageUrl: 'assets/tuquanao.jpg'),
    Flashcard(question: "Pillow",
        answer: "chiếc gối",imageUrl: 'assets/chiecgoi.jpg'),
    Flashcard(question: "Blanket",
        answer: "chăn mền",imageUrl: 'assets/chammen.jpg'),
    Flashcard(question: "Bin",
        answer: "thùng rác",imageUrl: 'assets/thungrac.jpg'),

  ];
  int _currentIndex= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyanAccent,
        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlineButton.icon(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TestScreen()),
                        );
                      },
                      icon: Icon(Icons.home),
                      label: Text('APP HOME')),
                  OutlineButton.icon(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      icon: Icon(Icons.offline_bolt_outlined),
                      label: Text('ĐĂNG XUẤT')),
                ],
              ),
              SizedBox(
                width: 350,
                height: 450,
                child: FlipCard(
                  front: FlashcardView(
                    text: _flashcard[_currentIndex].question,
                    image: _flashcard[_currentIndex].imageUrl
                  ),
                  back: FlashcardView(
                    text: _flashcard[_currentIndex].answer,
                      image: _flashcard[_currentIndex].imageUrl,
                  ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlineButton.icon(
                      onPressed:  showPreviousCard,
                      icon: Icon(Icons.chevron_left),
                      label: Text('Prev')),
                  OutlineButton.icon(
                      onPressed: showNextCard,
                      icon: Icon(Icons.chevron_right),
                      label: Text('Next ')),
                ],
              ),
            ],
          ),
        )
    );
  }

  void showNextCard(){
    setState(() {
      _currentIndex = _currentIndex+1 < _flashcard.length? _currentIndex +1 : 0;
    });
  }
  void showPreviousCard(){
    setState(() {
      _currentIndex=
      (_currentIndex-1>0) ? _currentIndex -1 : _flashcard.length-1;
    });
  }

}
