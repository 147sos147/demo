import 'package:flutter/material.dart';
import 'package:untitled1/Login.dart';
import 'package:untitled1/baihoc.dart';
import 'package:untitled1/listvideos.dart';
import 'package:http/http.dart' as http;
import 'package:untitled1/model.dart';
import 'package:untitled1/paragraph.dart';

class BottonTab extends StatefulWidget {
  _BottonTabStates createState() => _BottonTabStates();
}

class _BottonTabStates extends State<BottonTab> {
  PageController pageController = PageController();
  List<Widget> pages=[Baihoc(),];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void onItemTap(int selectedItem){
    pageController.jumpToPage(selectedItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: PageView(
       controller: pageController,
       children: pages,
       onPageChanged: _onItemTapped,
     ),
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Color(0xffd9ffbf),
        onTap: onItemTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: _selectedIndex==0?Colors.grey:Colors.grey,),
            label: 'home',
            backgroundColor: Colors.redAccent,
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note_sharp,color: _selectedIndex==0?Colors.grey:Colors.grey,),
            label: 'video',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: _selectedIndex==0?Colors.grey:Colors.grey,),
            label: 'settings',
            backgroundColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
