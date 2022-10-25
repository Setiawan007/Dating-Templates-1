import 'package:datting_app/pages/newpassword.dart';
import 'package:flutter/material.dart';
import 'package:datting_app/pages/login.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:datting_app/utilities/constant.dart' as style;

class otpPage extends StatefulWidget {
  otpPage({Key? key}) : super(key: key);

  static const String page_id = 'otp';

  @override
  State<otpPage> createState() => _otpPageState();
}

class _otpPageState extends State<otpPage> {
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
                          'Enter OTP',
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
                    _otpVerify(),
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

class _otpVerify extends StatefulWidget {
  const _otpVerify({
    Key? key,
  }) : super(key: key);

  @override
  State<_otpVerify> createState() => _otpVerifyState();
}

class _otpVerifyState extends State<_otpVerify> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 300.0,
          width: double.infinity,
          margin: EdgeInsets.only(
              top: 20.0, right: 20.0, bottom: 110.0, left: 20.0),
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
                  'An authentication code has been send to (+91) 9714253523',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 60,
                style: TextStyle(fontSize: 16),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I didn\'t receive code .',
                    style: TextStyle(
                      color: Colors.pinkAccent,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Resend',
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              Text(
                '120 Sec Left',
                style: TextStyle(color: Colors.indigoAccent, fontSize: 15.0),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => newPasswordPage()));
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
          )),
    );
  }
}
