import 'package:datting_app/pages/paymentsmethod.dart';
import 'package:datting_app/pages/profilecategories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settingPage extends StatefulWidget {
  settingPage({Key? key}) : super(key: key);

  static const String page_id = 'settingPage';

  @override
  State<settingPage> createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
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
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context, true);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Settings',
                        style: TextStyle(fontFamily: 'semibold', fontSize: 20),
                      ),
                    ),
                  ],
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
          chatContent(),
          mainContent(),
        ],
      ),
    );
  }

  Widget chatContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => profileCategoriesPage()));
        },
        child: Container(
          height: 90.0,
          margin: EdgeInsets.symmetric(horizontal: 10.0),
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
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(30),
                        child: FittedBox(
                          child: Image.asset('images/p5.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Darian Don',
                        style:
                            TextStyle(fontFamily: 'semibold', fontSize: 20.0),
                      ),
                      Text(
                        'Basic Member',
                        style:
                            TextStyle(color: Colors.pinkAccent, fontSize: 13.0),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.transparent,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_right,
                      color: Colors.black,
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
      ),
    );
  }

  Widget mainContent() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  gradient: LinearGradient(colors: [
                    Color(0xFFFD1CDA),
                    Color(0XFFFF8FF8),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Accounts',
                      style: TextStyle(
                          fontFamily: 'semibold',
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    buildContentItem(Icon(Icons.lock), 'Change Password', ''),
                    buildContentItem(
                        Icon(Icons.adjust_outlined), 'Order Management', ''),
                    buildContentItem(
                        Icon(Icons.article_rounded), 'Document Management', ''),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => paymentsMethod()));
                        },
                        child: buildContentItem(
                            Icon(Icons.attach_money), 'Payments', '')),
                    buildContentItem(Icon(Icons.logout), 'Sign Out', ''),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xFFFFDAE9),
                Color(0xFFFFDAE9),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'More Option',
                      style: TextStyle(
                          fontFamily: 'semibold',
                          fontSize: 20,
                          color: Colors.pinkAccent),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    buildContentToggle(Icon(Icons.pages), 'Newsletter'),
                    buildContentToggle(Icon(Icons.message), 'Text Message'),
                    buildContentToggle(Icon(Icons.call), 'Phone Call'),
                    buildContentItem(Icon(Icons.money), 'Currency', 'USD'),
                    buildContentItem(
                        Icon(Icons.language), 'Language', 'English'),
                    buildContentItem(
                        Icon(Icons.link), 'Linked Account', 'Facebook'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContentItem(icn, txt, txt2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: icn,
              ),
              Text(
                '$txt',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Row(
            children: [
              Text('$txt2'),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildContentToggle(icn, txt) {
    bool _switchValue = true;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: icn,
              ),
              Text(
                '$txt',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: CupertinoSwitch(
            value: _switchValue,
            onChanged: (value) {
              setState(() {
                _switchValue = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
