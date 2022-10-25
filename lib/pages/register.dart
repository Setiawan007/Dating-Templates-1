import 'package:datting_app/pages/home.dart';
import 'package:datting_app/pages/tabs.dart';
import 'package:datting_app/utilities/constant.dart' as style;
import 'package:flutter/material.dart';
import 'package:datting_app/pages/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static const String page_id = 'register';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/1.png'), fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0, bottom: 10.0),
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
                  boxContainer(
                    value: true,
                    onChanged: (value) {},
                  ),
                  textContainer(),
                ],
              ),
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
            ),
          ),
        ),
      ],
    );
  }
}

class textContainer extends StatelessWidget {
  const textContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'You have already account please',
          style: TextStyle(fontSize: 17.0, fontFamily: 'regular'),
        ),
        SizedBox(
          width: 10.0,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
          child: Text(
            'Log in',
            style: TextStyle(
                fontSize: 17.0, color: Colors.pinkAccent, fontFamily: 'bold'),
          ),
        ),
      ],
    );
  }
}

class boxContainer extends StatelessWidget {
  const boxContainer({
    required this.value,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    bool _isSelected = false;

    return Container(
      child: Container(
        height: 350.0,
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.pinkAccent,
                  ),
                  hintText: 'Enter Full Name',
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
                  hintText: 'Enter Password',
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
                  hintText: 'Enter Password',
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
                Navigator.of(context).pushNamedAndRemoveUntil(
                    tabsBarPage.page_id, (route) => false);
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
                        'Sign in',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )
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

  void setState(Null Function() param0) {}
}
