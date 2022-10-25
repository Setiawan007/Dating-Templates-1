import 'package:flutter/material.dart';

class outgoingPage extends StatefulWidget {
  outgoingPage({Key? key}) : super(key: key);

  static const String page_id = 'outgoingPage';

  @override
  State<outgoingPage> createState() => _outgoingPageState();
}

class _outgoingPageState extends State<outgoingPage> {
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
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  Text(
                    'Jhon Smith',
                    style: TextStyle(fontFamily: 'bold', fontSize: 20),
                  ),
                  Text(
                    'calling..',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/p4.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildIcons1(),
                      ],
                    ),
                    Column(
                      children: [
                        _buildIcons2(),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildIcons1() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFFE9BC3),
                Color(0xFFF32C7B),
              ],
            )),
        child: Icon(
          Icons.call,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildIcons2() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0),
                ),
              ),
              child: Icon(
                Icons.video_call,
                size: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0),
                ),
              ),
              child: Icon(
                Icons.volume_up,
                size: 30,
                color: Colors.pinkAccent,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0),
                ),
              ),
              child: Icon(
                Icons.mic,
                size: 30,
                color: Colors.greenAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
