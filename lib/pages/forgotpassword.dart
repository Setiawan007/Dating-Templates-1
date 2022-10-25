import 'package:datting_app/pages/otp.dart';
import 'package:flutter/material.dart';
import 'package:datting_app/pages/login.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:datting_app/utilities/constant.dart' as style;

class ForgotPasswordPage extends StatefulWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  int tabID = 1;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/1.png',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            reverse: true,
            child: SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/1.png'), fit: BoxFit.fill),
                ),
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
                          'Forgot Password',
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
                    _emailVerify(),
                  ],
                ),
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _emailVerify extends StatefulWidget {
  const _emailVerify({
    Key? key,
  }) : super(key: key);

  @override
  State<_emailVerify> createState() => _emailVerifyState();
}

class _emailVerifyState extends State<_emailVerify> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300.0,
        width: double.infinity,
        margin: EdgeInsets.all(20.0),
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
                'We will send a mail to the email address you registered to reset your password',
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
                    Icons.mail,
                    color: Colors.pinkAccent,
                  ),
                  hintText: 'Enter Email',
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
            Text(
              'Email send to ex*****@gmail.com',
              style: TextStyle(
                color: Colors.pinkAccent,
              ),
            ),
            InkWell(
              onTap: () {
                // navigator
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => otpPage()));
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
                        'Send',
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
