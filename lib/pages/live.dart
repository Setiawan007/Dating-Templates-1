import 'package:datting_app/pages/tabs.dart';
import 'package:flutter/material.dart';
import 'package:datting_app/utilities/constant.dart' as style;

class livePage extends StatefulWidget {
  livePage({Key? key}) : super(key: key);

  static const String page_id = 'livePage';

  @override
  State<livePage> createState() => _livePageState();
}

class _livePageState extends State<livePage> {
  List<int> text = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(child: _buildScaffold()),
      ],
    );
  }

  Widget _buildScaffold() {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildBackImage(),
            thirdNotification(),
            for (var i in text) msgContainer(),
          ],
        ),
      ),
      bottomNavigationBar: _buildFooter(),
    );
  }

  Widget _buildBackImage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/p4.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
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
                                builder: (context) => tabsBarPage()));
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
                        Icons.zoom_in,
                        color: Colors.greenAccent,
                      ),
                      onPressed: () {
                        //
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 300),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Column(
              children: [
                secondNotification(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget secondNotification() {
    return Container(
      height: 100.0,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(30),
                    child: FittedBox(
                      child: Image.asset('images/p4.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Jonson Joy",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'bold', fontSize: 17.0),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 100,
                              child: Text(
                                "12K Followers",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: false,
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  decoration: style.contentButtonStyle(),
                  child: GestureDetector(
                    onTap: () {
                      // on add friend
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 3.0),
                      child: Text(
                        'Live',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'semibold',
                            fontSize: 10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget thirdNotification() {
    return Container(
      height: 100.0,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.black12, width: 1.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.pinkAccent,
                        size: 17,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, bottom: 5),
                        child: Text(
                          "180 Comments",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "163 People",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: 'semibold', fontSize: 17.0),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10.0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 100,
                                child: Text(
                                  "Waching",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                  textDirection: TextDirection.ltr,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(30),
                      child: FittedBox(
                        child: Image.asset('images/p2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget msgContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        padding: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.black12, width: 1.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        "Darian Don",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 20.0, color: Colors.pinkAccent),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: Text(
                        "greate! do you like it..",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15.0, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // badge column
            Column(
              children: [
                Text(
                  '5:30 AM',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return SingleChildScrollView(
      reverse: true,
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Colors.pinkAccent.withOpacity(0.1),
        ),
        child: Row(
          children: <Widget>[
            InkWell(
              child: Container(
                height: 35,
                width: 35,
                child: Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Write a message...'),
              ),
            ),
            InkWell(
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    )),
                child: Icon(
                  Icons.near_me,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
    );
  }
}
