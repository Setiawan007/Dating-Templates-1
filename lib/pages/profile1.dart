import 'package:flutter/material.dart';

class profile1Page extends StatefulWidget {
  profile1Page({Key? key}) : super(key: key);

  static const String page_id = 'profile1Page';

  @override
  State<profile1Page> createState() => _profile1PageState();
}

class _profile1PageState extends State<profile1Page> {
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
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
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
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Text(
            'Jhon Smith',
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
                  //
                },
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget _buildBody() {
    final List<String> imageList = [
      'images/x1.jpg',
      "images/x2.jpg",
      "images/x3.jpg",
      "images/x4.jpg",
      "images/x5.jpg",
      "images/x6.jpg",
      "images/p2.jpg",
      "images/p3.jpg",
      "images/p4.jpg",
      "images/p5.jpg",
    ];
    return SingleChildScrollView(
      child: GridView.count(
        primary: false,
        crossAxisCount: 2,
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
