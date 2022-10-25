import 'package:flutter/material.dart';
import './constant.dart' as style;

const appColor = Color(0xFFF32C7B);

contentButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFFE9BC3),
          Color(0xFFF32C7B),
        ],
      ));
}

SmallButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFBB90FF),
          Color(0xFF9E15FF),
        ],
      ));
}

Profile1ButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF98A1FF),
          Color(0xFF616EFF),
        ],
      ));
}

Profile2ButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFA4E3FF),
          Color(0xFF43C4FF),
        ],
      ));
}

Profile3ButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF90FCBC),
          Color(0xFF40DB7E),
        ],
      ));
}

Profile4ButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFFAA0AC),
          Color(0xFFD54B5D),
        ],
      ));
}
