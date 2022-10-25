import 'package:datting_app/pages/chat2.dart';
import 'package:datting_app/pages/setting.dart';
import 'package:flutter/material.dart';

class matchProfilePage extends StatefulWidget {
  matchProfilePage({Key? key}) : super(key: key);

  static const String page_id = 'matchProfile';

  @override
  State<matchProfilePage> createState() => _matchProfilePageState();
}

class _matchProfilePageState extends State<matchProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBackImage(),
        _buildScaffold(),
      ],
    );
  }

  Widget _buildBackImage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/1.png'), fit: BoxFit.fill),
      ),
    );
  }

  Widget _buildScaffold() {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.apps_rounded,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context, true);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Hi Alex Smith',
                        style: TextStyle(fontFamily: 'semibold', fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.settings,
                          color: Colors.redAccent,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => settingPage()));
                        },
                      ),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.message_rounded,
                          color: Colors.greenAccent,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => chat2Page()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildCategories(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(200),
                                child: FittedBox(
                                  child: Image.asset('images/p3.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 30,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TextContent(
                                              'Alexa Jenny,26', Colors.black38),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextContent(
                                            'india', Colors.lightBlueAccent),
                                        TextContent(
                                            'Students', Colors.redAccent),
                                        TextContent(
                                            'Age 19', Colors.pinkAccent),
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0XFFFFF78D),
                                      Color(0xFFFDC319),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            child: IconButton(
                              icon: Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 20,
                              ),
                              onPressed: () {
                                // Navigate
                              },
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0XFFFF8FF8),
                                      Color(0xFFFD1CDA),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            child: IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 20,
                              ),
                              onPressed: () {
                                // Navigate
                              },
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0XFFFFE1F8),
                                      Color(0xFFFFE1F8),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            child: IconButton(
                              icon: Icon(
                                Icons.close,
                                color: Colors.pink,
                                size: 30,
                              ),
                              onPressed: () {
                                // Navigate
                              },
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0XFFD892FF),
                                      Color(0xFFBE1CFF),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            child: IconButton(
                              icon: Icon(
                                Icons.adjust_sharp,
                                color: Colors.white,
                                size: 20,
                              ),
                              onPressed: () {
                                // Navigate
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategories() {
    List<int> text = [1, 2, 3, 4, 5, 6, 7];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            for (var i in text)
              Column(
                children: [
                  Container(
                    height: 40.0,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: Text(
                      '# Like Me',
                      style: TextStyle(fontFamily: 'semibold'),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget TextContent(txt, clr) {
    return Container(
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: clr,
      ),
      child: Text(
        '$txt',
        style: TextStyle(fontFamily: 'semibold', color: Colors.white),
      ),
    );
  }

  Widget buildIcons(bgclr, icn, rdus) {
    return CircleAvatar(
      radius: rdus,
      backgroundColor: bgclr,
      child: IconButton(
        icon: Icon(
          icn,
          color: Colors.white,
          size: 20,
        ),
        onPressed: () {
          // Navigate
        },
      ),
    );
  }
}
