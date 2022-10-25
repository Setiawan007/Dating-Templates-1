import 'package:datting_app/pages/hobbies.dart';
import 'package:flutter/material.dart';
import 'package:datting_app/utilities/constant.dart' as style;

class selectCategories extends StatefulWidget {
  selectCategories({Key? key}) : super(key: key);

  static const String page_id = 'selectCategories';

  @override
  State<selectCategories> createState() => _selectCategoriesState();
}

class _selectCategoriesState extends State<selectCategories> {
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
              'Create Ideas',
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
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 90 / 120,
                padding: EdgeInsets.only(top: 16, left: 16, bottom: 16),
                children: [
                  _buildcontent(
                      Colors.pinkAccent, Icons.favorite_border, 'Love'),
                  _buildcontent(
                      Colors.greenAccent, Icons.people_outline, 'Friends'),
                  _buildcontent(
                      Colors.orangeAccent, Icons.backpack_outlined, 'Fellings'),
                  _buildcontent(
                      Colors.blueAccent, Icons.shop_2_outlined, 'Business'),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => selectHobbies()));
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

  Widget _buildcontent(clr, icn, txt) {
    return Container(
      margin: EdgeInsets.only(right: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: clr,
            child: IconButton(
              icon: Icon(
                icn,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                //navigate
              },
            ),
          ),
          Text(
            '$txt',
            style: TextStyle(fontFamily: 'bold', fontSize: 20),
          ),
        ],
      ),
    );
  }
}
