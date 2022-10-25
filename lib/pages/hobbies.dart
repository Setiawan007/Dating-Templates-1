import 'package:datting_app/pages/verifyidentity.dart';
import 'package:flutter/material.dart';
import 'package:datting_app/utilities/constant.dart' as style;

class selectHobbies extends StatefulWidget {
  selectHobbies({Key? key}) : super(key: key);

  static const String page_id = 'selectHobbies';

  @override
  State<selectHobbies> createState() => _selectHobbiesState();
}

class _selectHobbiesState extends State<selectHobbies> {
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
              'Select Hobbies',
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: GridView.count(
                primary: false,
                crossAxisCount: 3,
                shrinkWrap: true,
                childAspectRatio: 90 / 120,
                padding: EdgeInsets.only(top: 16, left: 16, bottom: 16),
                children: [
                  _buildcontent(
                      Colors.greenAccent.withOpacity(0.2),
                      Icons.favorite,
                      Colors.greenAccent,
                      'Love',
                      Colors.greenAccent),
                  _buildcontent(
                      Colors.orangeAccent.withOpacity(0.2),
                      Icons.design_services,
                      Colors.orangeAccent,
                      'Design',
                      Colors.orangeAccent),
                  _buildcontent(
                      Colors.pinkAccent.withOpacity(0.2),
                      Icons.music_note,
                      Colors.pinkAccent,
                      'Music',
                      Colors.pinkAccent),
                  _buildcontent(
                      Colors.tealAccent.withOpacity(0.2),
                      Icons.sports_football,
                      Colors.tealAccent,
                      'Athete',
                      Colors.tealAccent),
                  _buildcontent(
                      Colors.indigoAccent.withOpacity(0.2),
                      Icons.games,
                      Colors.indigoAccent,
                      'Games',
                      Colors.indigoAccent),
                  _buildcontent(
                      Colors.deepOrangeAccent.withOpacity(0.2),
                      Icons.water,
                      Colors.deepOrangeAccent,
                      'Swim',
                      Colors.deepOrangeAccent),
                  _buildcontent(
                      Colors.yellowAccent.withOpacity(0.2),
                      Icons.art_track,
                      Colors.yellowAccent,
                      'Art',
                      Colors.yellowAccent),
                  _buildcontent(
                      Colors.lightBlueAccent.withOpacity(0.2),
                      Icons.photo,
                      Colors.lightBlueAccent,
                      'Photo',
                      Colors.lightBlueAccent),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => verifyIdentity()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 10.0),
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
      ),
    );
  }

  Widget _buildcontent(bgclr, icn, icnclr, txt, fntclr) {
    return Container(
      margin: EdgeInsets.only(right: 16, bottom: 16),
      decoration: BoxDecoration(
        color: bgclr,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: IconButton(
              icon: Icon(
                icn,
                color: icnclr,
                size: 30,
              ),
              onPressed: () {
                //navigate
              },
            ),
          ),
          Text(
            '$txt',
            style: TextStyle(fontFamily: 'bold', fontSize: 20, color: fntclr),
          ),
        ],
      ),
    );
  }
}
