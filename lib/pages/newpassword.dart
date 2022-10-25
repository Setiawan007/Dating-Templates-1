import 'package:flutter/material.dart';
import 'package:datting_app/pages/login.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:datting_app/utilities/constant.dart' as style;

class newPasswordPage extends StatefulWidget {
  newPasswordPage({Key? key}) : super(key: key);

  static const String page_id = 'newPassword';

  @override
  State<newPasswordPage> createState() => _newPasswordPageState();
}

class _newPasswordPageState extends State<newPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/1.png'), fit: BoxFit.fill),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            reverse: true,
            child: SafeArea(
              child: Container(
                child: Column(
                  children: [
                    Row(
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                            ),
                          ),
                        ),
                        Text(
                          'New Password',
                          style:
                              TextStyle(fontSize: 17.0, fontFamily: 'semibold'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(100), // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(80), // Image radius
                              child: Image.asset('images/l1.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    _newPassword(),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _newPassword extends StatefulWidget {
  _newPassword({Key? key}) : super(key: key);

  @override
  State<_newPassword> createState() => __newPasswordState();
}

class __newPasswordState extends State<_newPassword> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300.0,
        width: double.infinity,
        margin:
            EdgeInsets.only(top: 20.0, right: 20.0, bottom: 110.0, left: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Now you can set your new password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.pinkAccent,
                  ),
                  hintText: 'New Passowrd',
                  fillColor: Colors.grey[300],
                  filled: true,
                  contentPadding: const EdgeInsets.only(bottom: 8.0, top: 14.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.pinkAccent,
                  ),
                  hintText: 'Confirm Passowrd',
                  fillColor: Colors.grey[300],
                  filled: true,
                  contentPadding: const EdgeInsets.only(bottom: 8.0, top: 14.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // navigator
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                });
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
                        'Done',
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
}
