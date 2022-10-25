import 'package:datting_app/pages/profiletimeline.dart';
import 'package:flutter/material.dart';
import 'package:datting_app/utilities/constant.dart' as style;

class notificationPage extends StatefulWidget {
  notificationPage({Key? key}) : super(key: key);

  static const String page_id = 'notification';

  @override
  State<notificationPage> createState() => _notificationPageState();
}

class _notificationPageState extends State<notificationPage> {
  List<int> text = [1, 2, 3, 4, 5, 6, 7];

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
                                  builder: (context) => profileTimelinePage()));
                        },
                      ),
                    ),
                  ),
                  Text(
                    'Notification',
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
                          color: Colors.greenAccent,
                        ),
                        onPressed: () {
                          // number of notification
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                firstNotification(),
                secondNotification(),
                for (var i in text) thirdNotification(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget firstNotification() {
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
                            style:
                                TextStyle(fontFamily: 'bold', fontSize: 17.0),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                          ),
                          SizedBox(
                            width: 50,
                            child: Text(
                              "Love your post",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                        child: Text(
                          "5 min ago",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 12.0, color: Colors.grey),
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
                    child: Image.asset('images/p5.jpg'),
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
                              SizedBox(
                                width: 50,
                                child: Text(
                                  "Follow you..",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 60,
                            child: Text(
                              "10 min ago",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.grey),
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
                decoration: style.Profile2ButtonStyle(),
                child: GestureDetector(
                  onTap: () {
                    // on add friend
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 3.0),
                    child: Text(
                      'Follow',
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
    width: double.infinity,
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
                    child: Image.asset('images/p5.jpg'),
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
                              SizedBox(
                                width: 50,
                                child: Text(
                                  "Send you a friend request",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 60,
                            child: Text(
                              "Yesterday 12:30 AM",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.grey),
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
                decoration: style.Profile3ButtonStyle(),
                child: GestureDetector(
                  onTap: () {
                    // on add friend
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 3.0),
                    child: Text(
                      'Accept',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'semibold',
                          fontSize: 10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 60,
                decoration: style.Profile4ButtonStyle(),
                child: GestureDetector(
                  onTap: () {
                    // on add friend
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 3.0),
                    child: Text(
                      'Delete',
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
