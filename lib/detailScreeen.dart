import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/flashcard.dart';
import 'package:untitled1/flashcard_view.dart';

import 'model.dart';

class DetailScreen extends StatefulWidget{
  //final List<Paragraph> paragraph;
  final List<Vocabulary> vocabulary;//khai báo list từ vựng từ model
  const DetailScreen(this.vocabulary);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen>{

  int _currentIndex= 0;
  @override
  Widget build(BuildContext context) {
    final vocabulary = widget.vocabulary;
    return Scaffold(
        backgroundColor: Colors.cyanAccent,
        appBar: AppBar(title: Text('VACABULARY'),centerTitle: true,backgroundColor: Colors.pink,),
        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(
                width: 350,
                height: 450,
                child: FlipCard(
                  front: FlashcardView(
                    text: "",
                    image: vocabulary[_currentIndex].image.upload//lấy dữ liệu từ data base
                  ),
                  back: FlashcardView(
                    text: vocabulary[_currentIndex].text,//lấy dữ liệu từ dattabáe
                      image: vocabulary[_currentIndex].image.upload,//lấy dữ liệu từ data base
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
      _currentIndex = _currentIndex+1 < widget.vocabulary.length? _currentIndex +1 : 0;
    });
  }
  void showPreviousCard(){
    setState(() {
      _currentIndex=
      (_currentIndex-1>0) ? _currentIndex -1 : widget.vocabulary.length-1;
    });
  }

}
