import 'package:datting_app/pages/chat2.dart';
import 'package:flutter/material.dart';

class messagePage extends StatefulWidget {
  messagePage({Key? key}) : super(key: key);

  static const String page_id = 'messagePage';

  @override
  State<messagePage> createState() => _messagePageState();
}

class _messagePageState extends State<messagePage> {
  List<Item> messages = <Item>[
    Item('left', 'Hey there! What\'s up>?'),
    Item(
        'right', 'Nothing. Just chilling and watching youtube What about you?'),
    Item('left', 'Same here! Been watching youtube for last 5 hours'),
    Item('right', 'Yeah i know. I am in same position'),
    Item('left', 'It\'s hard to be productive man '),
    Item('right', 'Sure thankyou'),
  ];

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
      appBar: AppBar(
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
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => chat2Page()));
                    },
                  ),
                ),
              ),
              Text(
                'Rahul Jograna',
                style: TextStyle(
                  fontFamily: 'bold',
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildFooter(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: messages.map((Item msg) {
          return msg.side == 'left'
              ? Container(
                  margin: EdgeInsets.only(bottom: 16),
                  width: MediaQuery.of(context).size.width - 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('images/p4.jpg'),
                        radius: 20,
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xFFA4E3FF),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  )),
                              child: Text(
                                msg.msg,
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8, left: 8),
                              child: Text(
                                '10:30 AM',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 16),
                          width: MediaQuery.of(context).size.width - 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFE9BC3),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(5),
                                      )),
                                  child: Text(
                                    msg.msg,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: Text(
                        '10:30 AM',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    )
                  ],
                );
        }).toList(),
      ),
    );
  }

  Widget _buildFooter() {
    return SingleChildScrollView(
      reverse: true,
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Colors.white,
        ),
        child: Row(
          children: <Widget>[
            InkWell(
              child: Container(
                height: 35,
                width: 35,
                child: Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Write a message...'),
              ),
            ),
            InkWell(
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    )),
                child: Icon(
                  Icons.near_me,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
    );
  }
}

class Item {
  const Item(this.side, this.msg);
  final String side;
  final String msg;
}
