import 'package:datting_app/pages/home.dart';
import 'package:datting_app/pages/myfriend.dart';
import 'package:datting_app/pages/notification.dart';
import 'package:flutter/material.dart';
import 'package:datting_app/utilities/constant.dart' as style;

class profileTimelinePage extends StatefulWidget {
  profileTimelinePage({Key? key}) : super(key: key);

  static const String page_id = 'profiletimeline';

  @override
  State<profileTimelinePage> createState() => _profileTimelinePageState();
}

class _profileTimelinePageState extends State<profileTimelinePage> {
  List<int> text = [1, 2];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/1.png'), fit: BoxFit.fill),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor:
                Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
            elevation: 0,
            automaticallyImplyLeading: false,
            flexibleSpace: SafeArea(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                    ),
                  ),
                ),
                Text(
                  'Profile Timeline',
                  style: TextStyle(fontFamily: 'bold', fontSize: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => notificationPage()));
                      },
                    ),
                  ),
                ),
              ],
            )),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                customProfileContent(),
                customProfileDetail(),
                buildCategories(),
                titleContent(),
                customPhotos(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget customProfileContent() {
  return Container(
    height: 200.0,
    margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(30),
                  child: FittedBox(
                    child: Image.asset('images/p5.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Josan Nikki',
                style: TextStyle(fontFamily: 'bold', fontSize: 20.0),
              ),
              Text(
                'New York',
                style: TextStyle(fontFamily: 'bold', fontSize: 13.0),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: style.Profile1ButtonStyle(),
                  child: GestureDetector(
                    onTap: () {
                      // on follow
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 3.0),
                      child: Text(
                        'Follow',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'semibold'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  decoration: style.Profile2ButtonStyle(),
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
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget customProfileDetail() {
  return Padding(
    padding: EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              '735',
              style: TextStyle(fontFamily: 'bold', fontSize: 20.0),
            ),
            Text(
              'Post',
              style: TextStyle(fontFamily: 'bold', color: Colors.black54),
            ),
          ],
        ),
        Container(
          height: 50.0,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
          ),
        ),
        Column(
          children: [
            Text(
              '886',
              style: TextStyle(fontFamily: 'bold', fontSize: 20.0),
            ),
            Text(
              'Following',
              style: TextStyle(fontFamily: 'bold', color: Colors.black54),
            ),
          ],
        ),
        Container(
          height: 50.0,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
          ),
        ),
        Column(
          children: [
            Text(
              '567',
              style: TextStyle(fontFamily: 'bold', fontSize: 20.0),
            ),
            Text(
              'Follower',
              style: TextStyle(fontFamily: 'bold', color: Colors.black54),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget buildCategories() {
  List<int> text = [1, 2, 3, 4, 5, 6, 7];

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        for (var i in text)
          Column(
            children: [
              Container(
                height: 40.0,
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Text(
                  'Photos',
                  style: TextStyle(fontFamily: 'semibold'),
                ),
              ),
            ],
          ),
      ],
    ),
  );
}

Widget titleContent() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Photos',
          style: TextStyle(
              fontSize: 20.0, color: Colors.black, fontFamily: 'bold'),
        ),
        Text(
          'Show All',
          style: TextStyle(color: Colors.black54, fontFamily: 'bold'),
        ),
      ],
    ),
  );
}

Widget customPhotos() {
  List<int> text = [1, 2, 3, 4, 5, 6, 7];

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        for (var i in text)
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    width: 2,
                    color: Colors.transparent,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(70),
                    child: FittedBox(
                      child: Image.asset('images/p2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 15.0,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        '2K',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.chat,
                        size: 15.0,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        '180',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.share,
                        size: 15.0,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        '5',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
      ],
    ),
  );
}
