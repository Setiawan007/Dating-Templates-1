import 'package:datting_app/pages/message.dart';
import 'package:flutter/material.dart';

class profileCategories2Page extends StatefulWidget {
  profileCategories2Page({Key? key}) : super(key: key);

  static const String page_id = 'profileCategories2Page';

  @override
  State<profileCategories2Page> createState() => _profileCategories2PageState();
}

class _profileCategories2PageState extends State<profileCategories2Page> {
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
              _buildIcon(Icons.apps_rounded, () {
                Navigator.pop(context);
              }),
              _buildIcon(Icons.auto_awesome, () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => messagePage()));
              }),
              _buildIcon(Icons.favorite, () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => messagePage()));
              }),
              _buildIcon(Icons.tv, () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => messagePage()));
              }),
              _buildIcon(Icons.brightness_7_rounded, () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => messagePage()));
              }),
              _buildIcon(Icons.chat_bubble_rounded, () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => messagePage()));
              }),
            ],
          ),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: GridView.count(
          primary: false,
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: 90 / 120,
          padding: EdgeInsets.only(top: 16, left: 16, bottom: 16),
          children: [
            maincontent('Dodiya Sayb', 'Software Engineer', 'images/x1.jpg'),
            maincontent('Jaydeep Hirani', 'Software Engineer', 'images/p4.jpg'),
            maincontent('Acp Shiva', 'Mecanical Engineer', 'images/x2.jpg'),
            maincontent('Dodiya Sayb', 'Software Engineer', 'images/x3.jpg'),
            maincontent('Dodiya Sayb', 'Software Engineer', 'images/x4.jpg'),
            maincontent('Dodiya Sayb', 'Software Engineer', 'images/p2.jpg'),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(icn, ss) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white,
        child: IconButton(
          icon: Icon(
            icn,
            color: Colors.black,
          ),
          onPressed: ss,
        ),
      ),
    );
  }

  Widget maincontent(txt1, txt2, img) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
              height: double.infinity,
              margin: EdgeInsets.only(right: 16, bottom: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('$img'), fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$txt1',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40.0,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 10.0),
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.orange,
                                  ),
                                  child: SizedBox(
                                    width: 130,
                                    child: Text(
                                      '$txt2',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      softWrap: false,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'semibold'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
          Positioned(
            left: 5,
            top: 5,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.greenAccent.withOpacity(0.2),
              child: IconButton(
                icon: Icon(
                  Icons.circle,
                  color: Colors.greenAccent,
                  size: 15,
                ),
                onPressed: () {
                  //navigate
                },
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 5,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.pinkAccent.withOpacity(0.2),
              child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.pinkAccent,
                  size: 15,
                ),
                onPressed: () {
                  //navigate
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
