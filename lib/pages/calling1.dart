import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class calling1Page extends StatefulWidget {
  calling1Page({Key? key}) : super(key: key);

  static const String page_id = 'calling1Page';

  @override
  State<calling1Page> createState() => _calling1PageState();
}

class _calling1PageState extends State<calling1Page> {
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
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: RippleAnimation(
            repeat: true,
            color: Colors.lightBlueAccent,
            minRadius: 90,
            ripplesCount: 6,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/p4.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(
                      "John Smith",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'bold',
                          color: Colors.black),
                    ),
                  ),
                  Text(
                    "2:30",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(fontSize: 20.0, color: Colors.pinkAccent),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildIcons(Icons.close, Colors.pinkAccent, Colors.white),
              _buildIcons(Icons.chat, Colors.white, Colors.greenAccent),
              _buildIcons(Icons.volume_up, Colors.white, Colors.blueAccent),
              _buildIcons(Icons.add_box, Colors.white, Colors.orangeAccent),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildIcons(icn, bgclr, icnclr) {
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
              color: bgclr,
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: Icon(
              icn,
              size: 30,
              color: icnclr,
            ),
          ),
        ],
      ),
    );
  }
}
