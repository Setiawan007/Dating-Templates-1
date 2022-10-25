import 'package:datting_app/pages/call.dart';
import 'package:datting_app/pages/chat1.dart';
import 'package:datting_app/pages/friend.dart';
import 'package:datting_app/pages/home.dart';
import 'package:datting_app/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:datting_app/utilities/constant.dart' as style;

class tabsBarPage extends StatefulWidget {
  tabsBarPage({Key? key}) : super(key: key);
  static const String page_id = 'tabsBarPage';

  @override
  State<tabsBarPage> createState() => _tabsBarPageState();
}

class _tabsBarPageState extends State<tabsBarPage> {
  int _currentIndex = 0;
  var radius = Radius.circular(10);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: (TabBar(
          labelColor: style.appColor,
          unselectedLabelColor: Color.fromARGB(255, 185, 196, 207),
          indicatorColor: style.appColor,
          labelPadding: EdgeInsets.symmetric(horizontal: 0),
          indicator: ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0))),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFFFFFFFF),
                  const Color(0xFFFEE1ED),
                ],
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          labelStyle: TextStyle(
            fontFamily: 'bold',
            fontSize: 12,
          ),
          onTap: (int index) => setState(() => _currentIndex = index),
          tabs: [
            Tab(
                icon: Icon(Icons.home,
                    color: _currentIndex == 0
                        ? Colors.pinkAccent
                        : Color.fromARGB(255, 185, 196, 207)),
                text: 'Home'),
            Tab(
                icon: Icon(Icons.call,
                    color: _currentIndex == 1
                        ? Colors.pinkAccent
                        : Color.fromARGB(255, 185, 196, 207)),
                text: 'Call'),
            Tab(
                icon: Icon(Icons.people,
                    color: _currentIndex == 2
                        ? Colors.pinkAccent
                        : Color.fromARGB(255, 185, 196, 207)),
                text: 'Friends'),
            Tab(
                icon: Icon(Icons.message,
                    color: _currentIndex == 3
                        ? Colors.pinkAccent
                        : Color.fromARGB(255, 185, 196, 207)),
                text: 'Messages'),
            Tab(
                icon: Icon(Icons.person,
                    color: _currentIndex == 4
                        ? Colors.pinkAccent
                        : Color.fromARGB(255, 185, 196, 207)),
                text: 'Profile'),
          ],
        )),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomePage(),
            callPage(),
            friendPage(),
            chat1Page(),
            profilePage(),
          ],
        ),
      ),
    );
  }
}
