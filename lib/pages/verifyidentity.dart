import 'package:datting_app/pages/touchscanning.dart';
import 'package:flutter/material.dart';
import 'package:datting_app/utilities/constant.dart' as style;

class verifyIdentity extends StatefulWidget {
  verifyIdentity({Key? key}) : super(key: key);

  static const String page_id = 'verifyIdentity';

  @override
  State<verifyIdentity> createState() => _verifyIdentityState();
}

class _verifyIdentityState extends State<verifyIdentity> {
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
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Text(
              'Verify Identity',
              style: TextStyle(
                fontFamily: 'bold',
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _firstContent(),
          _secondContent(),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => touchScanning()));
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 13.0),
                decoration: style.contentButtonStyle(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _firstContent() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(50),
                  child: FittedBox(
                    child: Image.asset('images/h1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Government ID',
                  style: TextStyle(
                      fontFamily: 'semibold',
                      fontSize: 20,
                      color: Colors.pinkAccent),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Take a driver\'s license, national identity card or password photo.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'semibold', fontSize: 15, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 50),
                child: InkWell(
                  onTap: () {
                    //
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera_alt_sharp,
                        color: Colors.pinkAccent,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Take new photo',
                        style:
                            TextStyle(fontSize: 20, color: Colors.pinkAccent),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _secondContent() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(50),
                  child: FittedBox(
                    child: Image.asset('images/h2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Selfi Photo',
                  style: TextStyle(
                      fontFamily: 'semibold',
                      fontSize: 20,
                      color: Colors.pinkAccent),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Take a driver\'s license, national identity card or password photo.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'semibold', fontSize: 15, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 50),
                child: InkWell(
                  onTap: () {
                    //
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.people_outline_sharp,
                        color: Colors.pinkAccent,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Take new selfi',
                        style:
                            TextStyle(fontSize: 20, color: Colors.pinkAccent),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
