import 'package:datting_app/pages/profiledetails.dart';
import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  profilePage({Key? key}) : super(key: key);

  static const String page_id = 'profilePage';

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  var itemList;

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
        backgroundColor: Colors.white, // <-- APPBAR WITH TRANSPARENT BG
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
                      Icons.add_circle_outline_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => profileDetails()));
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
                      Icons.messenger_outline_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // Navigate
                    },
                  ),
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
    List<int> text = [1, 2, 3, 4, 5, 6, 7];

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0),
              ),
            ),
            child: Column(
              children: [
                ProfileDetail(),
                TextContent(),
                FollowDetail(),
                FollowButton(),
              ],
            ),
          ),
          Column(
            children: [
              customProfile(),
              buildCategories(),
              buildPhotos(),
            ],
          ),
        ],
      ),
    );
  }

  Widget ProfileDetail() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        border: Border.all(
          width: 2,
          color: Colors.pinkAccent,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: SizedBox.fromSize(
            size: Size.fromRadius(40),
            child: FittedBox(
              child: Image.asset('images/p4.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget TextContent() {
    return Column(
      children: [
        Text(
          'Jaydeep Hirani',
          style: TextStyle(fontFamily: 'semibold', fontSize: 20.0),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 30,
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.orangeAccent),
                child: Text(
                  'Software Engineer',
                  style: TextStyle(fontFamily: 'semibold'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget FollowDetail() {
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

  Widget FollowButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              // on Follow
            },
            child: Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFFE9BC3),
                      Color(0xFFF32C7B),
                    ],
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Follow',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'semibold',
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget customProfile() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: 20),
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
                      'Photos',
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

  Widget buildPhotos() {
    final List<String> imageList = [
      'images/x1.jpg',
      "images/x2.jpg",
      "images/x3.jpg",
      "images/x4.jpg",
      "images/x5.jpg",
      "images/x6.jpg",
    ];
    return Container(
      child: GridView.count(
        primary: false,
        crossAxisCount: 3,
        shrinkWrap: true,
        childAspectRatio: 90 / 100,
        padding: EdgeInsets.only(top: 16, left: 16, bottom: 16),
        children: List.generate(imageList.length, (index) {
          return Container(
            child: Stack(
              children: <Widget>[
                Container(
                    height: double.infinity,
                    margin: EdgeInsets.only(right: 16, bottom: 16),
                    child: Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imageList[index]),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    )),
              ],
            ),
          );
        }),
      ),
    );
  }
}
