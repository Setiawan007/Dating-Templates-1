import 'package:datting_app/pages/home.dart';
import 'package:datting_app/pages/matchprofile.dart';
import 'package:datting_app/pages/message.dart';
import 'package:datting_app/pages/myfriend.dart';
import 'package:datting_app/pages/setting.dart';
import 'package:flutter/material.dart';

class profileCategoriesPage extends StatefulWidget {
  profileCategoriesPage({Key? key}) : super(key: key);

  static const String page_id = 'profileCategoriesPage';

  @override
  State<profileCategoriesPage> createState() => _profileCategoriesPageState();
}

class _profileCategoriesPageState extends State<profileCategoriesPage> {
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
          childAspectRatio: 90 / 125,
          padding: EdgeInsets.only(top: 16, left: 16, bottom: 16),
          children: [
            maincontent('Dodiya Sayb', 'Software Engineer', '\$ 30.00/hr',
                'images/x1.jpg'),
            maincontent('Jaydeep Hirani', 'Software Engineer', '\$ 20.00/hr',
                'images/p4.jpg'),
            maincontent('Acp Shiva', 'Mecanical Engineer', '\$ 30.00/hr',
                'images/x2.jpg'),
            maincontent('Dodiya Sayb', 'Software Engineer', '\$ 30.00/hr',
                'images/x3.jpg'),
            maincontent('Dodiya Sayb', 'Software Engineer', '\$ 30.00/hr',
                'images/x4.jpg'),
            maincontent('Dodiya Sayb', 'Software Engineer', '\$ 30.00/hr',
                'images/p2.jpg'),
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

  Widget maincontent(txt1, txt2, txt3, img) {
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
                  Stack(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('$img'), fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                      ),
                      Positioned(
                        right: 5,
                        top: 5,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon: Icon(
                              Icons.star,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 15),
                          Icon(Icons.star, color: Colors.orange, size: 15),
                          Icon(Icons.star, color: Colors.orange, size: 15),
                          Icon(Icons.star, color: Colors.orange, size: 15),
                          Icon(Icons.star, color: Colors.orange, size: 15),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('4.5'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 90,
                            child: Text(
                              '$txt3',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                              style: TextStyle(
                                  color: Colors.pinkAccent,
                                  fontFamily: 'semibold',
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
