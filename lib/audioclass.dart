// import 'package:flutter/material.dart';
// import 'package:untitled1/audio.dart';
//
// class Audio extends StatelessWidget {
//   final List<String> nameAudio = <String>[
//     'UNIT 1',
//     'UNIT 2',
//     'UNIT 3',
//     'UNIT 4',
//   ];
//   final List<String> UrlAudio = <String>[
//     'assets/moitruong.jpg',
//     'assets/hoppy.jpg',
//     'assets/camtrai.jpg',
//     'assets/tivi.jpg',
//   ];
//   final List<String> urlkk = [
//     'assets/despacito.mp3'
//         'assets/baby.mp3'
//         'assets/Ed Sheeran - Shape of You (Lyrics).mp3'
//         'assets/BLACKPINK.mp3'
//   ];
//   late final PlayAudio playAudio;
//   //const Audio({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text("AUDIO"),
//         centerTitle: true,
//         backgroundColor: Colors.pink,
//       ),
//       // body: Column(
//       //   children: [
//       //     InkWell(
//       //       onTap: () {
//       //         Navigator.push(
//       //           context,
//       //           MaterialPageRoute(builder: (context) => PlayAudio(url:'assets/despacito.mp3')),
//       //         );
//       //       },
//       //       child: Container(
//       //         margin: EdgeInsets.all(10.0),
//       //         height: 100,
//       //         width: 400,
//       //         //color: Colors.amber,
//       //         decoration: BoxDecoration(
//       //             borderRadius: BorderRadius.circular(20), color: Colors.black45),
//       //         child: Column(
//       //           mainAxisAlignment: MainAxisAlignment.center,
//       //           children: [
//       //             Text(
//       //               'DESPACITO',
//       //               style: TextStyle(color: Colors.white, fontSize: 30),
//       //             ),
//       //           ],
//       //         ),
//       //       ),
//       //     ),
//       //     InkWell(
//       //       onTap: (){
//       //         Navigator.push(
//       //           context,
//       //           MaterialPageRoute(builder: (context) => PlayAudio(url:'assets/baby.mp3')),
//       //         );
//       //       },
//       //       child: Container(
//       //         margin: EdgeInsets.all(10.0),
//       //         height: 100,
//       //         width: 400,
//       //         // color: Colors.black45,
//       //         decoration: BoxDecoration(
//       //             borderRadius: BorderRadius.circular(20), color: Colors.black45),
//       //         child: Column(
//       //           mainAxisAlignment: MainAxisAlignment.center,
//       //           children: [
//       //             Text('BABY SHARK',style: TextStyle(color: Colors.white,fontSize: 30),)
//       //           ],
//       //         ),
//       //       ),
//       //     ),
//       //     Column(
//       //       children: [
//       //         InkWell(
//       //           onTap: () {
//       //             Navigator.push(
//       //               context,
//       //               MaterialPageRoute(builder: (context) => PlayAudio(url:'assets/Ed Sheeran - Shape of You (Lyrics).mp3')),
//       //             );
//       //           },
//       //           child: Container(
//       //             margin: EdgeInsets.all(10.0),
//       //             height: 100,
//       //             width: 400,
//       //             //color: Colors.amber,
//       //             decoration: BoxDecoration(
//       //                 borderRadius: BorderRadius.circular(20), color: Colors.black45),
//       //             child: Column(
//       //               mainAxisAlignment: MainAxisAlignment.center,
//       //               children: [
//       //                 Text(
//       //                   'Ed Sheeran - Shape of You (Lyrics).mp3',
//       //                   style: TextStyle(color: Colors.white, fontSize: 30),
//       //                 ),
//       //               ],
//       //             ),
//       //           ),
//       //         ),
//       //       ],
//       //     ),
//       //     InkWell(
//       //       onTap: (){
//       //         Navigator.push(
//       //           context,
//       //           MaterialPageRoute(builder: (context) => PlayAudio(url:'assets/BLACKPINK.mp3')),
//       //         );
//       //       },
//       //       child: Container(
//       //         margin: EdgeInsets.all(10.0),
//       //         height: 100,
//       //         width: 400,
//       //         // color: Colors.black45,
//       //         decoration: BoxDecoration(
//       //             borderRadius: BorderRadius.circular(20), color: Colors.black45),
//       //         child: Column(
//       //           mainAxisAlignment: MainAxisAlignment.center,
//       //           children: [
//       //             Text('BLACKPINK',style: TextStyle(color: Colors.white,fontSize: 30),)
//       //           ],
//       //         ),
//       //       ),
//       //     )
//       //   ],
//       // ),
//       body: ListView.builder(
//           padding: const EdgeInsets.all(8),
//           itemCount: nameAudio.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Card(
//               child: ListTile(
//                 title: Text(nameAudio[index]),
//                 leading: SizedBox(
//                   width: 100,
//                   height: 100,
//                   child: Image.asset(UrlAudio[index]),
//                 ),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) =>
//                             new  PlayAudio(url: 'urlkk[index]')),
//                   );
//                 },
//               ),
//             );
//           }),
//     );
//   }
// }
