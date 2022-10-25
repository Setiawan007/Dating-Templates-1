import 'package:datting_app/pages/home.dart';
import 'package:datting_app/pages/message.dart';
import 'package:flutter/material.dart';

class chat1Page extends StatefulWidget {
  chat1Page({Key? key}) : super(key: key);

  static const String page_id = 'chat1Page';

  @override
  State<chat1Page> createState() => _chat1PageState();
}

class _chat1PageState extends State<chat1Page> {
  List<int> text = [1, 2, 3, 4, 5, 6, 7, 8];

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
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                ),
              ),
              Text(
                'Message Search',
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                searchbar('Search Messages..'),
              ],
            ),
          ),
          for (var i in text) messageContent(),
        ],
      ),
    );
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

  Widget messageContent() {
    return InkWell(
      onTap: () {
        //
      },
      child: Container(
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
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
                        child: Image.asset('images/p4.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        'Jaydeep Hirani',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        style:
                            TextStyle(fontSize: 20.0, fontFamily: 'semibold'),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: Text(
                        '10 Mutual Friend',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(color: Colors.black54, fontSize: 13.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '10:45 AM',
                              style: TextStyle(
                                  color: Colors.black, fontFamily: 'semibold'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
