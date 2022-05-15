import 'package:flutter/material.dart';
import 'package:untitled1/flashcard.dart';
import 'package:untitled1/noidung.dart';
import 'package:untitled1/paragraphdatamodel.dart';
import 'package:untitled1/paragraphdatamodel.dart';
//import 'package:untitled1/txtfile.dart';

import 'paragraphdatamodel.dart';





class Paragraph extends StatefulWidget {
  @override
  _ParagraphState createState() => _ParagraphState();
}

class _ParagraphState extends State<Paragraph> {
  static List<String> paragraphname = ['Write a paragraph about pollution.',
    'Write a paragraph about your most favourite movie.',
    'Describe a camping holiday.',
    'Write a paragraph about advantages and disadvantages of Television.'];
  static List url = [
    'assets/moitruong.jpg',
    'assets/hoppy.jpg',
    'assets/camtrai.jpg',
    'assets/tivi.jpg',
  ];
  static List chude = [
    'Pollution is the biggest problem in the world now. There are many types of contamination including air pollution, noise pollution, water pollution, land pollution,… There are many factors leading to pollutions. First of all, CO2 is the main source of thread in the world. This emission from factories, burning fossil fuels, deforestations,… make the earth warmer. As a results, the sea level is rising and many other severe disasters happen, air is also polluted by waste and dirt, which affect directly on the human’s life. Also, waste from factories, pollutants released during the manufacturing process and toxic chemicals when farming pollute the source of water and land. Those toxic components increase diseases like cancer and poisons. Besides, sound from building and from vehicles on the streets create noise pollution, which annoy people and make them stressed. So what we can do to protect our planet? First, grow more trees and stop deforestations. Forests play vital roles on earth so try to protect them as well as nature. Second, using alternative powers like solar energy, wind or tide to reduce the amount of fossil fuels. To students, making use of public transports or bicycle is not only environment friendly but also good for health. Finally, government have to pass laws and fine severely the companies that release too much waste without didn’t any process. After that, we will definitely gain achievements.',
    'The fast and furious is my favorite film which I have seen 4 times. It was a series of action films produced by Universal. There are 7 main characters including Dominic Toretto by Vin Diesel and his crew. The series has been filmed since 2001 and always gain certain achievements. The film is based on an article, titled "Racer X", about New York street clubs that race Japanese cars late at night, although the film is set primarily in Los Angeles. All members of the teams are talent racers. Although they are always under the secret monitor of FBI but they didn’t actually belong it. They helped policemen and FBI to find out the stolen documents and vital equipments by terrorists. They fought like heroes and were never scared of death to gain victories and protect peace on earth. The film became one of the best films in the world and had a considerable turnover. The main content that the film actually conveyed was that If you fight alone, you loose, if you fight together, you win. It also overvaluates the friendship as well as praises braveness of those people.',
    'When I was 13, in the summer, my class and I went camping in a natural park out side the city. It was a sunny day and the weather was quite hot. We moved on a bus to the park early in the morning. We had prepared food and drink at home with all emergency equipments. We hired 2 tents in the park. In the morning, we played team building games like football, volleyball or running and catching. After felling tired of games, we sat down and prepared lunch. Our teacher instructed us to make roast meat and fruit juice. After that, we could do by ourselves and enjoyed our meals. In the afternoon, after having a rest, we were wandering around the park to study about flora and fauna system there. It was a natural park so saw a lake, lots of old trees, many types of butterflies and birds. There was also a wide range of flowers that we had never seen before. At the end of the trip, we are required to write a report to tell what we learned during the trip.  We saw many new things in the nature and improved team-work skills. We came back home at 5 pm and I immediately told mom what we had experienced. I really loved that trip and looked forward the following curricular activities like that.',
    'Television is a breakthrough invention of human, however, it has both advantages and drawbacks. First, take a look at its benefits. TV is a huge source of information with a wide variety news and instruction channels. You now can learn through TV and update news about what is happening in the world. Television also provides a huge knowledge of many fields including natural science, social science,… Besides, Television is a common type of entertainment thanks to a wide range of music TV programs, cartoons, reality shows or funny programs. On the other hand, television has some outstanding disadvantages. In fact, many people become addicted to Television and turn it on all day. Especially to children, they don’t want to go out to play with friends or focus on study. They just stick their eyes to the screen without wanting to leave. Some programs even contain violent and criminal content, which influence negatively on children. Also, spending hours watching TV is harmful to your eyesight and wasting your time. With that amount of time, you can do something more beneficial such as playing sports, doing physical exercises or learning new skills. In summary, nowadays, television is indispensable and its benefits outweigh its drawbacks.',
  ];

  final List<ParagraphDataModel> ParagraphData = List.generate(
      paragraphname.length,
          (index) => ParagraphDataModel('${paragraphname[index]}', '${url[index]}', '${chude[index]}'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text('ĐOẠN VĂN') ,centerTitle: true,backgroundColor: Colors.pink,),
        body: ListView.builder(
          itemCount: ParagraphData.length,
            itemBuilder: (context,index){
                return Card(
                  child: ListTile(
                    title: Text(ParagraphData[index].name),
                    leading: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(ParagraphData[index].ImageUrl),
                    ),
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context)=>
                                  NoidungDetail(paragraphDataModel:
                                  ParagraphData[index],)));
                    },
                  ),
                );
            }
        ),
    );

  }

}




