import 'package:datting_app/pages/message.dart';
import 'package:datting_app/pages/tabs.dart';
import 'package:flutter/material.dart';

class chat3Page extends StatefulWidget {
  chat3Page({Key? key}) : super(key: key);

  static const page_id = 'chat3Page';

  @override
  State<chat3Page> createState() => _chat3PageState();
}

class _chat3PageState extends State<chat3Page> {
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
            mainAxisAlignment: MainAxisAlignment.start,
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
                              builder: (context) => tabsBarPage()));
                    },
                  ),
                ),
              ),
              Text(
                'Message',
                style: TextStyle(
                  fontFamily: 'bold',
                  fontSize: 20,
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
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  buildImages('Rahul Jograna', 'images/p2.jpg'),
                  buildImages('Hardik Rajput', 'images/p2.jpg'),
                  buildImages('Shailly Acharya', 'images/p3.jpg'),
                  buildImages('Jaydeep Hirani', 'images/p4.jpg'),
                  buildImages('Dodiya Saheb', 'images/p5.jpg'),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildProfile2(Image.asset('images/p2.jpg'), ('Hardik')),
                buildProfile2(Image.asset('images/p3.jpg'), ('Rahul')),
                buildProfile2(Image.asset('images/p4.jpg'), ('Jaydeep')),
                buildProfile2(Image.asset('images/p5.jpg'), ('Mausam')),
                buildProfile2(Image.asset('images/p3.jpg'), ('Shailly')),
                buildProfile2(Image.asset('images/p2.jpg'), ('Hirani')),
                buildProfile2(Image.asset('images/p4.jpg'), ('Devang')),
                buildProfile2(Image.asset('images/p5.jpg'), ('Jagdish')),
                buildProfile2(Image.asset('images/p2.jpg'), ('Mayank')),
                buildProfile2(Image.asset('images/p3.jpg'), ('Darshan')),
                buildProfile2(Image.asset('images/p5.jpg'), ('Suchi')),
              ],
            ),
          ),
          for (var i in text) messageContent(),
        ],
      ),
    );
  }

  Widget buildImages(txt, img) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 130,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: new DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.srcOver),
              image: new AssetImage('$img'),
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          left: 15,
          child: SizedBox(
            width: 120,
            child: Text(
              '$txt',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
              style: TextStyle(
                  color: Colors.white, fontFamily: 'semibold', fontSize: 10),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildProfile2(img, txt) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Stack(
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
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(width: 3, color: Colors.white),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
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

  Widget messageContent() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => messagePage()));
      },
      child: Container(
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15),
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.black12, width: 1))),
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
