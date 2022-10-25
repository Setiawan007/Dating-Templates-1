import 'package:flutter/material.dart';
import 'package:datting_app/utilities/constant.dart' as style;

class ratePage extends StatefulWidget {
  ratePage({Key? key}) : super(key: key);

  static const String page_id = 'ratePage';

  @override
  State<ratePage> createState() => _ratePageState();
}

class _ratePageState extends State<ratePage> {
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
              'Rate',
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
      reverse: true,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(50),
                      child: FittedBox(
                        child: Image.asset('images/t2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    child: Text(
                      'How would your rate the quality of this services',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    child: Text(
                      'Leave your valuable comments.',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                )
              ],
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 8,
                  decoration: InputDecoration.collapsed(
                      hintText: 'Enter your text here...',
                      fillColor: Colors.grey),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                //
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
                        'Post Now',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
            )
          ],
        ),
      ),
    );
  }
}
