import 'package:datting_app/pages/call.dart';
import 'package:datting_app/pages/calling1.dart';
import 'package:datting_app/pages/calling2.dart';
import 'package:datting_app/pages/categories.dart';
import 'package:datting_app/pages/chat1.dart';
import 'package:datting_app/pages/chat3.dart';
import 'package:datting_app/pages/friend.dart';
import 'package:datting_app/pages/hobbies.dart';
import 'package:datting_app/pages/live.dart';
import 'package:datting_app/pages/matchprofile.dart';
import 'package:datting_app/pages/outgoing.dart';
import 'package:datting_app/pages/paymentsmethod.dart';
import 'package:datting_app/pages/profile.dart';
import 'package:datting_app/pages/profile1.dart';
import 'package:datting_app/pages/profilecategories.dart';
import 'package:datting_app/pages/profilecategories2.dart';
import 'package:datting_app/pages/profiledetails.dart';
import 'package:datting_app/pages/rate.dart';
import 'package:datting_app/pages/refrencecode.dart';
import 'package:datting_app/pages/tabs.dart';
import 'package:datting_app/pages/touchscanning.dart';
import 'package:datting_app/pages/verifyidentity.dart';
import 'package:datting_app/pages/videos.dart';
import 'package:flutter/material.dart';
import 'package:datting_app/pages/home.dart';
import 'package:datting_app/pages/login.dart';
import 'package:datting_app/pages/myfriend.dart';
import 'package:datting_app/pages/newpassword.dart';
import 'package:datting_app/pages/notification.dart';
import 'package:datting_app/pages/otp.dart';
import 'package:datting_app/pages/profiletimeline.dart';
import 'package:datting_app/pages/register.dart';
import 'package:datting_app/pages/searchprofile.dart';
import 'package:datting_app/pages/chat2.dart';
import 'package:datting_app/pages/message.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const DattingApp());
}

class DattingApp extends StatelessWidget {
  const DattingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date One',
      theme: ThemeData(fontFamily: 'regular'),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.page_id: (context) => HomePage(),
        LoginPage.page_id: (context) => LoginPage(),
        LoginPage.page_id: (context) => LoginPage(),
        RegisterPage.page_id: (context) => RegisterPage(),
        otpPage.page_id: (context) => otpPage(),
        newPasswordPage.page_id: (context) => newPasswordPage(),
        myFriendPage.page_id: (context) => myFriendPage(),
        profileTimelinePage.page_id: (context) => profileTimelinePage(),
        notificationPage.page_id: (context) => notificationPage(),
        searchProfilePage.page_id: (context) => searchProfilePage(),
        chat2Page.page_id: (context) => chat2Page(),
        messagePage.page_id: (context) => messagePage(),
        callPage.page_id: (context) => callPage(),
        chat1Page.page_id: (context) => chat1Page(),
        friendPage.page_id: (context) => friendPage(),
        profilePage.page_id: (context) => profilePage(),
        tabsBarPage.page_id: (context) => tabsBarPage(),
        matchProfilePage.page_id: (context) => matchProfilePage(),
        profileCategoriesPage.page_id: (context) => profileCategoriesPage(),
        chat3Page.page_id: (context) => chat3Page(),
        profileCategories2Page.page_id: (context) => profileCategories2Page(),
        livePage.page_id: (context) => livePage(),
        selectCategories.page_id: (context) => selectCategories(),
        selectHobbies.page_id: (context) => selectHobbies(),
        verifyIdentity.page_id: (context) => verifyIdentity(),
        touchScanning.page_id: (context) => touchScanning(),
        ratePage.page_id: (context) => ratePage(),
        profile1Page.page_id: (context) => profile1Page(),
        outgoingPage.page_id: (context) => outgoingPage(),
        calling2Page.page_id: (context) => calling2Page(),
        calling1Page.page_id: (context) => calling1Page(),
        profileDetails.page_id: (context) => profileDetails(),
        paymentsMethod.page_id: (context) => paymentsMethod(),
        refrenceCode.page_id: (context) => refrenceCode(),
        videoPage.page_id: (context) => videoPage(),
      },
    );
  }
}
