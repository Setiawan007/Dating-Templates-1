import 'package:flutter/material.dart';

class calling2Page extends StatefulWidget {
  calling2Page({Key? key}) : super(key: key);

  static const String page_id = 'calling2Page';

  @override
  State<calling2Page> createState() => _calling2PageState();
}

class _calling2PageState extends State<calling2Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          _buildBackImage(),
          _buildScaffold(),
        ],
      ),
    );
  }

  Widget _buildBackImage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/p4.jpg'), fit: BoxFit.cover),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.transparent,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Anny Kitty',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'bold', fontSize: 25),
                ),
                Text(
                  'Calling..',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 100, top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildIcons(Icons.flip, 'Flip'),
              _buildIcons(Icons.camera_sharp, 'Stop Video'),
              _buildIcons(Icons.volume_mute, 'Mute'),
              _buildIcons(Icons.call_end, 'End Call'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildIcons(icn, txt) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: Icon(
              icn,
              size: 30,
              color: Colors.white,
            ),
          ),
          Text(
            '$txt',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
