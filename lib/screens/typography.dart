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

final whiteRegular22 = TextStyle(fontSize: 22, color: whitee, fontWeight: FontWeight.normal);
final accentRegular22 = TextStyle(fontSize: 22, color: accentt, fontWeight: FontWeight.normal);
final whiteLight22 = TextStyle(fontSize: 22, color: whitee, fontWeight: FontWeight.w300);

final accentText18 = TextStyle(fontSize: 18, color: accentt, fontWeight: FontWeight.w400);
final whiteText18 = TextStyle(fontSize: 18, color: whitee, fontWeight: FontWeight.w400);
final blackText18 = TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400);
final whiteBold18 = TextStyle(fontSize: 18, color: whitee, fontWeight: FontWeight.w800);
final grayRegular18 = TextStyle(fontSize: 18, color: grayy, fontWeight: FontWeight.w500);


final whiteSub16 = TextStyle(fontSize: 16, color: whitee, fontWeight: FontWeight.normal);


Widget verticalSpace({required double height}) {
  return SizedBox(height: height,);
}

Widget horizontalSpace({required double width}) {
  return SizedBox(width: width,);
}