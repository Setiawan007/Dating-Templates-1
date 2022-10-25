import 'package:datting_app/pages/message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:datting_app/pages/searchprofile.dart';

class chat2Page extends StatefulWidget {
  chat2Page({Key? key}) : super(key: key);

  static const String page_id = 'chat2Page';

  @override
  State<chat2Page> createState() => _chat2PageState();
}

class _chat2PageState extends State<chat2Page> {
  List<int> text = [1, 2, 3, 4, 5, 6, 7];
  int tabID = 1;
  late int segmentedControlValue = 0;
  final Map<int, Widget> myTabs = const <int, Widget>{
    0: Text(
      "RECENT CHAT",
      style: TextStyle(fontFamily: 'bold'),
    ),
    1: Text(
      "ACTIVE CHAT",
      style: TextStyle(fontFamily: 'bold'),
    )
  };
  @override
  void initState() {
    super.initState();
    segmentedControlValue = 1;
  }

  @override
  Widget build(BuildContext context) {
    // segmentedControlValue = context
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
                              builder: (context) => searchProfilePage()));
                    },
                  ),
                ),
              ),
              Text(
                'Chat',
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
              segmentedControlValue = segmentedControlValue == 1 ? 0 : 1;
            });
            print(segmentedControlValue);
          }),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Container(padding: EdgeInsets.all(16), child: segmentedControl()),
          Row(
            children: [
              searchbar('Search for partner..'),
            ],
          ),
          for (var i in text)
            segmentedControlValue == 0
                ? _buildFirstContainer()
                : _buildSecondContainer()
        ],
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

  Widget _buildFirstContainer() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => messagePage()));
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Colors.grey.shade600),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // First Container
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Stack(
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
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(18),
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                ),
                                constraints: BoxConstraints(
                                  minWidth: 14,
                                  minHeight: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Darian Don',
                                  style: TextStyle(
                                      fontFamily: 'semibold', fontSize: 17.0)),
                              Text('greate! do you like it..',
                                  style: TextStyle(
                                      fontFamily: 'semibold',
                                      fontSize: 15.0,
                                      color: Colors.grey)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // badge column
                    segmentedControlValue == 0
                        ? _buildBadgeColumn('30 min')
                        : _buildBadgeColumn('Active'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBadgeColumn(
    txt,
  ) {
    return Column(
      children: [
        Text(
          '$txt',
          style: TextStyle(
              fontFamily: 'semibold', fontSize: 15.0, color: Colors.grey),
        ),
        segmentedControlValue == 0
            ? Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                constraints: BoxConstraints(
                  minWidth: 22,
                  minHeight: 15,
                ),
                child: Text(
                  '1',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontFamily: 'bold'),
                ),
              )
            : Container(),
      ],
    );
  }

  Widget _buildSecondContainer() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => messagePage()));
      },
      child: Container(
        child: Column(
          children: [
            // Second Container
            _buildFirstContainer()
          ],
        ),
      ),
    );
  }
}
