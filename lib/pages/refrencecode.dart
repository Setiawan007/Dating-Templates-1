import 'package:flutter/material.dart';
import 'package:datting_app/utilities/constant.dart' as style;

class refrenceCode extends StatefulWidget {
  refrenceCode({Key? key}) : super(key: key);

  static const String page_id = 'refrenceCode';

  @override
  State<refrenceCode> createState() => _refrenceCodeState();
}

class _refrenceCodeState extends State<refrenceCode> {
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
                      'Refer & Earn',
                      style: TextStyle(fontFamily: 'semibold', fontSize: 20),
                    ),
                  ),
                ],
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
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox.fromSize(
                size: Size.fromRadius(150),
                child: FittedBox(
                  child: Image.asset('images/f2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            height: 120,
            width: double.infinity,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Refer And Earn',
                        style:
                            TextStyle(color: Colors.pinkAccent, fontSize: 20),
                      ),
                      Container(
                        // width: ,
                        child: Text(
                          'Share this code with your friends \n and both of you will get \$12',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "GG253FF3",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                    InkWell(
                      onTap: () {
                        //
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.copy,
                            color: Colors.pinkAccent,
                          ),
                          Text(
                            "Copy Code",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.pinkAccent),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _buildButton(),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return InkWell(
      onTap: () {
        //
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Invite Friends',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
