import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

final whiteHeading32 = TextStyle(fontSize: 32, color: whitee, fontWeight: FontWeight.w800);
final accentHeading32 = TextStyle(fontSize: 32, color: accentt, fontWeight: FontWeight.w800);
final grayHeading32 = TextStyle(fontSize: 32, wordSpacing: 8, color: whitee, fontWeight: FontWeight.w900);

final regularHeading28 = TextStyle(fontSize: 28, color: accentt, fontWeight: FontWeight.w400);
final boldHeading28 = TextStyle(fontSize: 28, color: whitee, fontWeight: FontWeight.w800);

final accentBold24 = TextStyle(fontSize: 24, color: accentt, fontWeight: FontWeight.w600);
final whiteBold24 = TextStyle(fontSize: 24, color: whitee, fontWeight: FontWeight.w600);
final whiteRegular24 = TextStyle(fontSize: 24, color: whitee, fontWeight: FontWeight.w500);


final blackBold24 = TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w600);

final whiteRegular22 = TextStyle(fontSize: 22, color: whitee, fontWeight: FontWeight.normal);
final accentRegular22 = TextStyle(fontSize: 22, color: purpleAccent, fontWeight: FontWeight.normal);
final whiteLight22 = TextStyle(fontSize: 22, color: whitee, fontWeight: FontWeight.w300);

final accentText18 = TextStyle(fontSize: 18, color: accentt, fontWeight: FontWeight.w400);
final whiteText18 = TextStyle(fontSize: 18, color: whitee, fontWeight: FontWeight.w400);
final blackText18 = TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400);
final blackBoldText18 = TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w800);
final whiteBold18 = TextStyle(fontSize: 18, color: whitee, fontWeight: FontWeight.w800);
final grayRegular18 = TextStyle(fontSize: 18, color: grayy, fontWeight: FontWeight.w500);

final blackRegular14 = TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400);
final blackRegular16 = TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400);
final blackRegular12 = TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400);

final accentRegular12 = TextStyle(fontSize: 12, color: purpleAccent, fontWeight: FontWeight.w400);
final accentRegular14 = TextStyle(fontSize: 14, color: purpleAccent, fontWeight: FontWeight.w400);
final accentRegular16 = TextStyle(fontSize: 16, color: purpleAccent, fontWeight: FontWeight.w400);
final accentMedium16 = TextStyle(fontSize: 16, color: purpleAccent, fontWeight: FontWeight.w500);
final grayMedium14 = TextStyle(fontSize: 14, color: Color(0xff333333), fontWeight: FontWeight.w500);

final gray33Regular20 = TextStyle(fontSize: 20, color: Color(0xff333333), fontWeight: FontWeight.w400);
final gray66Regular14 = TextStyle(fontSize: 14, color: Color(0xff666666), fontWeight: FontWeight.w400);
final gray33Regular14 = TextStyle(fontSize: 14, color: Color(0xff666666), fontWeight: FontWeight.w400);
final gray66Regular16 = TextStyle(fontSize: 16, color: Color(0xff666666), fontWeight: FontWeight.w400);
final gray33Regular16 = TextStyle(fontSize: 16, color: Color(0xff333333), fontWeight: FontWeight.w400);


final grayBDRegular14 = TextStyle(fontSize: 14, color: Color(0xffBDBDBD), fontWeight: FontWeight.w400);

final grayRegular14 = TextStyle(fontSize: 14, color: Color(0xff707070), fontWeight: FontWeight.w400);
final grayRegular12 = TextStyle(fontSize: 12, color: Color(0xff707070), fontWeight: FontWeight.w400);
final gray2Regular12 = TextStyle(fontSize: 12, color: Color(0xffA8A8A8), fontWeight: FontWeight.w400);

final whiteLight16 = TextStyle(fontSize: 16, color: whitee, fontWeight: FontWeight.w300);
final whiteRegular16 = TextStyle(fontSize: 16, color: whitee, fontWeight: FontWeight.w400);
final whiteRegular12 = TextStyle(fontSize: 12, color: whitee, fontWeight: FontWeight.w400);
final whiteMedium12 = TextStyle(fontSize: 12, color: whitee, fontWeight: FontWeight.w600);
final whitePLACEHOLDER14 = TextStyle(fontSize: 14, color: Color(0xffbcbcbc), fontWeight: FontWeight.w400);


Widget verticalSpace({required double height}) {
  return SizedBox(height: height);
}

Widget horizontalSpace({required double width}) {
  return SizedBox(width: width);
}

class VerticalSpace extends StatelessWidget {
  final double _size;
  VerticalSpace(this._size);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: _size);
  }
}

class HorizontalSpace extends StatelessWidget {
  final double _size;
  HorizontalSpace(this._size);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: _size);
  }
}

final dezyShadow = BoxShadow(
color: Colors.black.withOpacity(0.15),
spreadRadius: 0,
blurRadius: 10,
offset: Offset(0, 3), // changes position of shadow
);