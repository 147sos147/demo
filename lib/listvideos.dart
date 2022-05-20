import 'package:flutter/material.dart';
import 'package:untitled1/model.dart';
import 'package:untitled1/videoscreen.dart';


class ListVideos extends StatefulWidget {
  final List<Conversation> conversation;
  const ListVideos( this.conversation);
  @override
  _ListVideosState createState() => _ListVideosState();
}
class _ListVideosState extends State<ListVideos> {
  @override
  Widget build(BuildContext context) {
    final conversation = widget.conversation;
    print(8);
    return Scaffold(
      appBar: AppBar(
        title: const Text('CONVERSATION'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
          itemCount: conversation.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(conversation[index].title),
                leading: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.network(conversation[index].thumbnail.upload),
                ),
                //onTap: () {
                //   Navigator.of(context).push(MaterialPageRoute(
                //       builder: (context) =>
                //           VideoScreen(conversation[index]),);
                //   //paragraphDataModel: ParagraphData[index],)));
                // },
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>
                            VideoScreen(conversation[index])),// SHOW  nội dung
                  );
                },
              ),
            );
          }),
    );
  }
}
