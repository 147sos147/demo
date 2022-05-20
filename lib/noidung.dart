import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/paragraphdatamodel.dart';

import 'model.dart';
//import 'package:untitled1/txtfile.dart';

class NoidungDetail extends StatelessWidget {
  final Paragraph paragraph;//đối tượng từ doạn văn
   NoidungDetail(this.paragraph);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(paragraph.title),),
      body: Container(
        child: Column(
          children: [
            Image.network(paragraph.image.upload),
            Expanded(
                child: Container(
                  height: 120,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                  child: Text(
                    paragraph.description,//LẤY NỘI DUNG  VỀ
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20),),
                )
                )
            ),
          ],
        ),
      ),
    );
  }
}
