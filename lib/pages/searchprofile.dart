import 'package:datting_app/pages/chat2.dart';
import 'package:datting_app/pages/myfriend.dart';
import 'package:select_dialog/select_dialog.dart';
import 'package:flutter/material.dart';

class searchProfilePage extends StatefulWidget {
  searchProfilePage({Key? key}) : super(key: key);

  static const String page_id = 'searchProfile';

  @override
  State<searchProfilePage> createState() => _searchProfilePage();
}

class _searchProfilePage extends State<searchProfilePage> {
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
                          Icons.apps_rounded,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => myFriendPage()));
                        },
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //open model
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.pinkAccent,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            'Newyork',
                            style:
                                TextStyle(fontFamily: 'bold', fontSize: 15.0),
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.chat,
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
                  ),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 50.0,
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        searchbar('Search for partner..'),
                      ],
                    ),
                  ),
                ),
                customProfile(),
                buildTitle('Popular', Colors.pinkAccent),
                customPhotos(),
                buildTitle('Favorites Artist', Colors.transparent),
                customProfile2(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget searchbar(hintText) {
  return Flexible(
    child: TextField(
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.shade400),
        suffixIcon: Icon(Icons.search, color: Colors.pinkAccent),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      ),
    ),
  );
}

Widget customProfile() {
  return SingleChildScrollView(
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
  );
}

Widget customProfile2() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        buildProfile2(Image.asset('images/p2.jpg'), ('dodiya')),
        buildProfile2(Image.asset('images/p3.jpg'), ('mehul')),
        buildProfile2(Image.asset('images/p4.jpg'), ('hirani')),
        buildProfile2(Image.asset('images/p5.jpg'), ('darshan')),
        buildProfile2(Image.asset('images/p3.jpg'), ('devang')),
        buildProfile2(Image.asset('images/p2.jpg'), ('dodiya')),
        buildProfile2(Image.asset('images/p4.jpg'), ('dodiya')),
        buildProfile2(Image.asset('images/p5.jpg'), ('dodiya')),
        buildProfile2(Image.asset('images/p2.jpg'), ('dodiya')),
        buildProfile2(Image.asset('images/p3.jpg'), ('dodiya')),
        buildProfile2(Image.asset('images/p5.jpg'), ('dodiya')),
      ],
    ),
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

Widget buildProfile2(img, txt) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
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
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                constraints: BoxConstraints(
                  minWidth: 12,
                  minHeight: 12,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            )
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

Widget buildTitle(ttl, clr) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              '$ttl',
              style: TextStyle(
                  fontSize: 20.0, color: Colors.black, fontFamily: 'bold'),
            ),
            Container(
              height: 15,
              width: 15,
              margin: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: clr,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ],
        ),
        Text(
          'View All',
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Home Vibes #2',
                    style: TextStyle(fontFamily: 'bold', fontSize: 16),
                  ),
                  Text(
                    'Alisha John',
                    style: TextStyle(
                        fontFamily: 'bold', color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
      ],
    ),
  );
}
