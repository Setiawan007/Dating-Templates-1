import 'package:flutter/material.dart';

class friendPage extends StatefulWidget {
  friendPage({Key? key}) : super(key: key);

  static const String page_id = 'friendPage';

  @override
  State<friendPage> createState() => _friendPageState();
}

class _friendPageState extends State<friendPage> {
  List<int> text = [1, 2];

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          _buildTitle('Friends'),
          for (var i in text) FirstContent(),
          _buildTitle('Suggest Friends'),
          for (var i in text) SecondContent(),
        ],
      ),
    );
  }

  Widget _buildTitle(ttltxt) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
            '$ttltxt',
            style: TextStyle(fontFamily: 'bold', fontSize: 20),
          ),
        ),
      ],
    );
  }

  Widget FirstContent() {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
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
                  SizedBox(
                    width: 150,
                    child: Text(
                      'Jaydeep Hirani',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(fontSize: 20.0, fontFamily: 'semibold'),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                    child: Text(
                      '10 Mutual Friend',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(color: Colors.black54, fontSize: 13.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF95FCEC),
                          Color(0xFF13D69E),
                        ],
                      )),
                  child: IconButton(
                    icon: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFF2F2F2),
                          Color(0xFFB2B2B2),
                        ],
                      )),
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget SecondContent() {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
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
                      child: Image.asset('images/p4.jpg'),
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
                      'Jaydeep Hirani',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(fontSize: 20.0, fontFamily: 'semibold'),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                    child: Text(
                      '10 Mutual Friend',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(color: Colors.black54, fontSize: 13.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        // on Follow
                      },
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFBB90FF),
                                Color(0xFF9D10FF),
                              ],
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Follow',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
