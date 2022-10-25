import 'package:datting_app/pages/chat3.dart';
import 'package:datting_app/pages/login.dart';
import 'package:datting_app/pages/notification.dart';
import 'package:datting_app/pages/tabs.dart';
import 'package:flutter/material.dart';

class sideMenu extends StatefulWidget {
  sideMenu({Key? key}) : super(key: key);

  @override
  State<sideMenu> createState() => _sideMenuState();
}

class _sideMenuState extends State<sideMenu> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          appBar: _buildAppBar(),
          body: _buildBody(),
        ),
      ],
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
                    Icons.apps_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
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
                    Icons.notifications,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => notificationPage()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(40),
                        child: FittedBox(
                          child: Image.asset('images/p4.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: Text(
                        'John Smith',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'bold',
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      child: Text(
                        'Samantha Smith',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => tabsBarPage()));
                      },
                      child: _buildContent(Icons.home, 'Home'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chat3Page()));
                      },
                      child: _buildContent(Icons.chat, 'Chat'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => notificationPage()));
                      },
                      child:
                          _buildContent(Icons.notifications, 'Notifications'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      child: _buildContent(Icons.info, 'Appinfo'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      child: _buildContent(Icons.help, 'Help'),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: _buildContent(Icons.logout, 'Logout'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(icn, txt) {
    return Row(
      children: [
        Icon(
          icn,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          '$txt',
          style: TextStyle(color: Colors.white, fontFamily: 'bold'),
        ),
      ],
    );
  }
}
