import 'package:datting_app/pages/calling1.dart';
import 'package:datting_app/pages/calling2.dart';
import 'package:datting_app/pages/home.dart';
import 'package:datting_app/pages/message.dart';
import 'package:datting_app/pages/outgoing.dart';
import 'package:datting_app/pages/profiletimeline.dart';
import 'package:datting_app/pages/rate.dart';
import 'package:datting_app/pages/tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class callPage extends StatefulWidget {
  callPage({Key? key}) : super(key: key);

  static const String page_id = 'callPage';

  @override
  State<callPage> createState() => _callPageState();
}

class _callPageState extends State<callPage> {
  List<int> text = [1, 2, 3, 4, 5, 6, 7];
  int tabID = 1;
  late int segmentedControlValue = 0;
  final Map<int, Widget> myTabs = const <int, Widget>{
    0: Text(
      "CHAT",
      style: TextStyle(fontFamily: 'bold'),
    ),
    1: Text(
      "CALL",
      style: TextStyle(fontFamily: 'bold'),
    ),
    2: Text(
      "ACTIVE",
      style: TextStyle(fontFamily: 'bold'),
    ),
  };
  @override
  void initState() {
    super.initState();
    segmentedControlValue = 1;
  }

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
                      //
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
                      //
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

  Widget segmentedControl() {
    return Container(
      width: double.infinity,
      child: CupertinoSlidingSegmentedControl(
          thumbColor: Colors.pinkAccent,
          groupValue: segmentedControlValue,
          backgroundColor: Colors.transparent,
          children: myTabs,
          onValueChanged: (i) {
            this.setState(() {
              segmentedControlValue = i.hashCode;
            });
            print(i.hashCode);
          }),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: [
            Container(padding: EdgeInsets.all(16), child: segmentedControl()),
            Row(
              children: [
                searchbar('Search for partner..'),
              ],
            ),
            Container(
              child: customProfile2(),
            ),
            Column(
              children: [
                segmentedControlValue == 0
                    ? // First Container
                    firstContainer()
                    : segmentedControlValue == 1
                        ? // Second Container
                        secondContainer()
                        : segmentedControlValue == 2
                            ? // Third Container
                            thirdContainer()
                            : Container()
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget searchbar(hintText) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
      ),
    );
  }

  Widget customProfile2() {
    return SingleChildScrollView(
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

  Widget firstContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => messagePage()));
                  },
                  child: chatContent(
                      "Darian Don",
                      "Active 3 min ago",
                      "images/p2.jpg",
                      null,
                      null,
                      Icons.chevron_right,
                      Colors.pinkAccent,
                      Colors.transparent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget secondContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              children: [
                chatContent(
                    "John Smith",
                    "Active 3 min ago",
                    "images/p4.jpg",
                    Icons.trending_up,
                    Colors.greenAccent,
                    Icons.call,
                    Colors.white,
                    Colors.blueAccent),
              ],
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              children: [
                chatContent(
                    "John Smith",
                    "Active 3 min ago",
                    "images/p3.jpg",
                    Icons.trending_down,
                    Colors.yellowAccent,
                    Icons.video_call,
                    Colors.white,
                    Colors.greenAccent),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget thirdContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => messagePage()));
                  },
                  child: chatContent(
                    "John Smith",
                    "Active 3 min ago",
                    "images/p5.jpg",
                    null,
                    null,
                    Icons.video_call,
                    Colors.white,
                    Colors.greenAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget chatContent(
      txt, txt2, img, smallicn, smallicnclr, btnicon, btnclr, btnbgclr) {
    return Column(
      children: [
        segmentedControlValue == 0
            ? // First content
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Container(
                  height: 90.0,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(30),
                                child: FittedBox(
                                  child: Image.asset('$img'),
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
                                  "$txt",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'semibold',
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                width: 90,
                                child: Text(
                                  "$txt2",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // First Container
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.transparent,
                          child: IconButton(
                            icon: Icon(
                              Icons.chevron_right,
                              color: Colors.pinkAccent,
                              size: 30,
                            ),
                            onPressed: () {
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : segmentedControlValue == 1
                ? // Second Content

                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Container(
                      height: 90.0,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(30),
                                    child: FittedBox(
                                      child: Image.asset('$img'),
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
                                      "$txt",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      softWrap: false,
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: 'semibold',
                                          color: Colors.black),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        smallicn,
                                        color: smallicnclr,
                                      ),
                                      SizedBox(
                                        width: 90,
                                        child: Text(
                                          "$txt2",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // Second Container
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: btnbgclr,
                              child: IconButton(
                                icon: Icon(
                                  btnicon,
                                  color: btnclr,
                                  size: 25,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              outgoingPage())); // outgoinpage
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : segmentedControlValue == 2
                    ? // Third Content

                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Container(
                          height: 90.0,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: SizedBox.fromSize(
                                              size: Size.fromRadius(30),
                                              child: FittedBox(
                                                child: Image.asset('$img'),
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
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              border: Border.all(
                                                  width: 3,
                                                  color: Colors.white),
                                            ),
                                            constraints: BoxConstraints(
                                              minWidth: 14,
                                              minHeight: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 150,
                                        child: Text(
                                          "$txt",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontFamily: 'semibold',
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              // Third Container
                              ThirdContentIcons(
                                  Colors.blue.shade50,
                                  Icons.call,
                                  Colors.blueAccent,
                                  Colors.pink.shade50,
                                  Icons.video_call,
                                  Colors.pinkAccent,
                                  Colors.green.shade50,
                                  Icons.add,
                                  Colors.greenAccent)
                            ],
                          ),
                        ),
                      )
                    : Container()
      ],
    );
  }

  Widget ThirdContentIcons(btnbgclr1, btnicon1, btnclr1, btnbgclr2, btnicon2,
      btnclr2, btnbgclr3, btnicon3, btnclr3) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: btnbgclr1,
              child: IconButton(
                icon: Icon(
                  btnicon1,
                  color: btnclr1,
                  size: 15,
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => outgoingPage()));
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: btnbgclr2,
              child: IconButton(
                icon: Icon(
                  btnicon2,
                  color: btnclr2,
                  size: 15,
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => calling2Page()));
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: btnbgclr3,
              child: IconButton(
                icon: Icon(
                  btnicon3,
                  color: btnclr3,
                  size: 15,
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => calling1Page()));
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
