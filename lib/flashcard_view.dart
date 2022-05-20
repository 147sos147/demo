import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlashcardView extends StatelessWidget {
  final String text;
  final String image;
  FlashcardView({Key? key, required this.text, required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      return Card(
        child: Stack(
          children: [
            Center(child: Image.network(image)),
            Text(text, textAlign: TextAlign.center,style: TextStyle(color: Colors.pink, fontSize: 60,))
          ],
        )
      );
  }
}
// elevation: 20,
// child: Center(
// child: Text(text, textAlign: TextAlign.center,style: TextStyle(color: Colors.pink, fontSize: 40,),
// ),
// ),'images/crying-teemo.gif'

