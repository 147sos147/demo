import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/paragraphdatamodel.dart';
//import 'package:untitled1/txtfile.dart';

class NoidungDetail extends StatelessWidget {
  final ParagraphDataModel paragraphDataModel;
  const NoidungDetail({Key? key,required  this.paragraphDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(paragraphDataModel.name),),
      body: Container(
        child: Column(
          children: [
            Image.asset(paragraphDataModel.ImageUrl,),
            Expanded(
                child: Container(
                  height: 120,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                  child: Text(
                    paragraphDataModel.des,
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
