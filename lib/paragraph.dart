import 'package:flutter/material.dart';
import 'package:untitled1/model.dart';
import 'package:untitled1/noidung.dart';





class Paragraph1 extends StatefulWidget {
  final List<Paragraph> paragraph;// khi báo list đoạn văn tưf model
  const Paragraph1(this.paragraph);//
  @override
  _Paragraph1State createState() => _Paragraph1State();
}

class _Paragraph1State extends State<Paragraph1> {
  @override
  Widget build(BuildContext context) {
    final paragraph = widget.paragraph;
    //print(paragraph);
    return Scaffold(
      appBar:  AppBar(title: Text('PARAGRAPH') ,centerTitle: true,backgroundColor: Colors.pink,),
        body: ListView.builder(
          itemCount: paragraph.length,
            itemBuilder: (context,index){
                return Card(
                  child: ListTile(
                    title: Text(paragraph[index].title),// lấy chữ về
                    leading: SizedBox(
                      width: 100,
                      height: 100,
                      child:  Image.network(paragraph[index].image.upload),//lấy hình ảnh
                    ),
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context)=>
                                  NoidungDetail(paragraph[index])),// SHOW  nội dung
                      );
                    },
                  ),
                );
            }
        ),
    );

  }

}




