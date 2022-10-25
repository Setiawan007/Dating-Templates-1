import 'package:datting_app/pages/chat3.dart';
import 'package:datting_app/pages/live.dart';
import 'package:datting_app/pages/matchprofile.dart';
import 'package:datting_app/pages/myfriend.dart';
import 'package:datting_app/pages/profile1.dart';
import 'package:datting_app/pages/profilecategories2.dart';
import 'package:datting_app/pages/rate.dart';
import 'package:datting_app/pages/setting.dart';
import 'package:datting_app/pages/sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:datting_app/utilities/constant.dart' as style;

class videoPage extends StatefulWidget {
  videoPage({Key? key}) : super(key: key);

  static const String page_id = 'videoPage';

  @override
  State<videoPage> createState() => _videoPageState();
}

class _videoPageState extends State<videoPage> {
  @override
  Widget build(BuildContext context) {
    List<int> text = [1, 2, 3, 4];
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/1.png'), fit: BoxFit.fill),
          ),
        ),
        Scaffold(
          drawerEnableOpenDragGesture: false,
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          drawer: myDrawer(), // drawer
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor:
                Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
            elevation: 0,
            flexibleSpace: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Builder(
                          builder: (context) => CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.apps_rounded,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    Scaffold.of(context).openDrawer();
                                  },
                                ),
                              ))),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.auto_awesome,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => myFriendPage()));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => matchProfilePage()));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.tv,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => videoPage()));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.brightness_7_rounded,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => settingPage()));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.chat_bubble_rounded,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => chat3Page()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildMyProfile(Image.asset('images/p2.jpg'), ('rahul')),
                        buildProfile(Image.asset('images/p2.jpg'), ('dodiya')),
                        buildProfile(Image.asset('images/p3.jpg'), ('mehul')),
                        buildProfile(Image.asset('images/p4.jpg'), ('hirani')),
                        buildProfile(Image.asset('images/p5.jpg'), ('darshan')),
                        buildProfile(Image.asset('images/p3.jpg'), ('devang')),
                        buildProfile(Image.asset('images/p2.jpg'), ('dodiya')),
                        buildProfile(Image.asset('images/p4.jpg'), ('dodiya')),
                        buildProfile(Image.asset('images/p5.jpg'), ('dodiya')),
                        buildProfile(Image.asset('images/p2.jpg'), ('dodiya')),
                        buildProfile(Image.asset('images/p3.jpg'), ('dodiya')),
                        buildProfile(Image.asset('images/p5.jpg'), ('dodiya')),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      for (var i in text) slidersContent() // all slidersContent
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFE9BC3),
            Color(0xFFF32C7B),
          ],
        )),
        child: sideMenu(),
      ),
    );
  }

  Widget slidersContent() {
    final List<String> imageList = [
      'images/x1.jpg',
      "images/x2.jpg",
      "images/x3.jpg",
      "images/x4.jpg",
      "images/x5.jpg",
      "images/x6.jpg",
    ];
    return Container(
      height: 450.0,
      width: double.infinity,
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, right: 20.0, left: 20.0, bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'images/p3.jpg',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Alisha Jems',
                        style:
                            TextStyle(fontFamily: 'semibold', fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      decoration: style.SmallButtonStyle(),
                      child: GestureDetector(
                        onTap: () {
                          // on add friend
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 3.0),
                          child: Text(
                            'Add Friend',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'semibold'),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: GFCarousel(
                pagination: true,
                activeIndicator: Colors.white,
                height: 300.0,
                viewportFraction: 1.0,
                items: imageList.map(
                  (url) {
                    return Container(
                      margin: EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        child: Image.asset(
                          url,
                          fit: BoxFit.cover,
                          width: 1000.0,
                        ),
                      ),
                    );
                  },
                ).toList(),
                onPageChanged: (index) {
                  setState(() {
                    index;
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 5.0, right: 20.0, left: 20.0, bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => profileCategories2Page()));
                  },
                  child:
                      crouselIcon(Icon(Icons.remove_red_eye_rounded), ('2426')),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => livePage()));
                  },
                  child: crouselIcon(
                      Icon(
                        Icons.favorite_rounded,
                        color: Colors.pinkAccent,
                      ),
                      ('50')),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => livePage()));
                  },
                  child: crouselIcon(Icon(Icons.chat_bubble), ('20')),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => profile1Page()));
                  },
                  child: crouselIcon(Icon(Icons.share), ('5')),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ratePage()));
                      },
                      child: Icon(Icons.save_alt_rounded),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget crouselIcon(icns, txts) {
    return Row(
      children: [
        icns,
        SizedBox(
          width: 7.0,
        ),
        Text(
          txts,
          style: TextStyle(fontFamily: 'semibold', fontSize: 10.0),
        ),
        SizedBox(
          width: 10.0,
        ),
      ],
    );
  }

  Widget buildProfile(img, txt) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(
                width: 2,
                color: Colors.pinkAccent,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: SizedBox.fromSize(
                size: Size.fromRadius(30),
                child: FittedBox(
                  child: img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            '$txt',
            style: TextStyle(fontFamily: 'semibold'),
          ),
        ],
      ),
    );
  }

  Widget buildMyProfile(img, txt) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(
                    width: 2,
                    color: Colors.pinkAccent,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(30),
                    child: FittedBox(
                      child: img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Icon(
                  Icons.add_circle,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          Text(
            '$txt',
            style: TextStyle(fontFamily: 'semibold'),
          ),
        ],
      ),
    );
  }
}
