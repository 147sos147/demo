import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled1/Login.dart';
import 'package:untitled1/model.dart';
import 'package:untitled1/testscreen.dart';
import 'package:http/http.dart' as http;

class Baihoc extends StatefulWidget {
  @override
  _BaihocState createState() => _BaihocState();
}

class _BaihocState extends State<Baihoc> {
  Future<List<CourseModel>> fetchCourses() async {
    var response = await http
        .get(Uri.parse("http://flutter-mobile-app-api.herokuapp.com/courses/"));
    return (jsonDecode(response.body) as List)
        .map((data) => CourseModel.fromJson(data))
        .toList();//gọi api
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COURSE'),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.offline_bolt_outlined),

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              ],
            );
          },
        ),
      ),
      body: FutureBuilder<List<CourseModel>>(
        future: fetchCourses(),
        builder: (context, AsyncSnapshot<List<CourseModel>> snapshot) {
          final courses = snapshot.data!;print('100');
          return ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: courses.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text(courses[index].name),
                    leading: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.network(courses[index].image.upload),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                               TestScreen(courses[index].vocabulary,courses[index].paragraph,
                                  courses[index].conversation,),
                        ),
                      );
                    },
                  ),
                );
              });
        },
      ),
    );
  }
}
