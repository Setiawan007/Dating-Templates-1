import 'package:datting_app/pages/home.dart';
import 'package:datting_app/pages/profiletimeline.dart';
import 'package:datting_app/pages/searchprofile.dart';
import 'package:flutter/material.dart';

class myFriendPage extends StatefulWidget {
  const myFriendPage({Key? key}) : super(key: key);

  static const String page_id = 'myFriend';

  @override
  State<myFriendPage> createState() => _myFriendPageState();
}

class _myFriendPageState extends State<myFriendPage> {
  @override
  Widget build(BuildContext context) {
    List<int> text = [1, 2, 3, 4, 5, 6, 7];

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
                  'My Friend',
                  style: TextStyle(fontFamily: 'bold', fontSize: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(
                        Icons.search_rounded,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => searchProfilePage()));
                      },
                    ),
                  ),
                ),
              ],
            )),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Friend',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontFamily: 'bold'),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                              color: Colors.black54, fontFamily: 'bold'),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
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
                  for (var i in text)
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => profileTimelinePage()));
                      },
                      child: chatContent(),
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
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
              color: Colors.transparent,
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

Widget chatContent() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    child: Container(
      height: 90.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(30),
                    child: FittedBox(
                      child: Image.asset('images/p5.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Darian Don',
                    style: TextStyle(fontFamily: 'semibold', fontSize: 20.0),
                  ),
                  Text(
                    'greate do you love it..!',
                    style: TextStyle(color: Colors.black54, fontSize: 13.0),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black26,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
