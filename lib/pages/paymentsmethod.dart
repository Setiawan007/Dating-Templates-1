import 'package:datting_app/pages/refrencecode.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:datting_app/utilities/constant.dart' as style;

class paymentsMethod extends StatefulWidget {
  paymentsMethod({Key? key}) : super(key: key);

  static const String page_id = 'paymentsMethod';

  @override
  State<paymentsMethod> createState() => _paymentsMethodState();
}

class _paymentsMethodState extends State<paymentsMethod> {
  bool isChecked = false;
  bool Checked = false;

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
                      'Payments Method',
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
    final List<String> imageList = [
      'images/a1.png',
      "images/a2.png",
      "images/a3.png",
      "images/a4.png",
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: GFCarousel(
                pagination: true,
                activeIndicator: Colors.white,
                height: 200.0,
                viewportFraction: 1.0,
                items: imageList.map(
                  (url) {
                    return Container(
                      margin: EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        child: Image.asset(
                          url,
                          fit: BoxFit.cover,
                          width: 1000.0,
                        ),
                      ),
                    );
                  },
                ).toList(),
                onPageChanged: (index) {
                  setState(() {
                    index;
                  });
                },
              ),
            ),
          ),
          Column(
            children: [
              _buildContent(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
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
                    "Visa •••• •••• •••• 256",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(fontSize: 15.0, color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Text(
                      "Change",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style:
                          TextStyle(fontSize: 15.0, color: Colors.pinkAccent),
                    ),
                  ),
                ],
              ),
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
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.pinkAccent,
                        value: isChecked,
                        shape: CircleBorder(),
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        "Credit/Debit/ATM Card",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_right)
                ],
              ),
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
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.pinkAccent,
                        value: Checked,
                        shape: CircleBorder(),
                        onChanged: (bool? value) {
                          setState(() {
                            Checked = value!;
                          });
                        },
                      ),
                      Text(
                        "Cash on payments",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.pinkAccent.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.card_giftcard,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Add new card",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_right)
                ],
              ),
            ),
          ),
        ),
        _buildButton(),
      ],
    );
  }

  Widget _buildButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => refrenceCode()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.SmallButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Process to chekout',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
