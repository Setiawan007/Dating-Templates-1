import 'package:flutter/material.dart';
import 'package:datting_app/utilities/constant.dart' as style;

class profileDetails extends StatefulWidget {
  profileDetails({Key? key}) : super(key: key);

  static const String page_id = 'profileDetails';

  @override
  State<profileDetails> createState() => _profileDetailsState();
}

class _profileDetailsState extends State<profileDetails> {
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
                        'Profile Details',
                        style: TextStyle(fontFamily: 'semibold', fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: [
          _buildProfile(),
          _buildInformation(),
        ],
      ),
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
    );
  }

  Widget _buildProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/p4.jpg'), fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
              ),
              Text(
                "Jenifer Lopez",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'semibold',
                    color: Colors.black),
              ),
              Text(
                "Account Credit : \$ 200.00",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(fontSize: 17.0, color: Colors.pinkAccent),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInformation() {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTextfields('Enter Your Name..'),
            _buildTextfields('Enter Your Mobile No..'),
            _buildTextfields('Enter Your Gmail..'),
            _buildAddress('Enter Your Address..'),
            _buildButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextfields(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.edit,
            color: Colors.grey,
          ),
          hintText: '$txt',
          fillColor: Colors.white.withOpacity(0.5),
          filled: true,
          contentPadding:
              const EdgeInsets.only(bottom: 8.0, top: 14.0, left: 20),
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
    );
  }

  Widget _buildAddress(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        maxLines: 6,
        decoration: InputDecoration(
          hintText: '$txt',
          fillColor: Colors.white.withOpacity(0.5),
          filled: true,
          contentPadding:
              const EdgeInsets.only(bottom: 8.0, top: 14.0, left: 20),
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
    );
  }

  Widget _buildButton() {
    return InkWell(
      onTap: () {
        //
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Save',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
