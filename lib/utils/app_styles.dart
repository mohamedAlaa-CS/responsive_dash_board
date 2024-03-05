import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16 = TextStyle(
    fontSize: getResonsiveFontSize(fontSize: 16),
    color: const Color(0xff064061),
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
  );
  static TextStyle styleBold16 = TextStyle(
    fontSize: getResonsiveFontSize(fontSize: 16),
    color: const Color(0xff4EB7F2),
    fontWeight: FontWeight.w700,
    fontFamily: 'Montserrat',
  );
  static TextStyle styleMedium16 = TextStyle(
    fontSize: getResonsiveFontSize(fontSize: 16),
    color: const Color(0xff064061),
    fontWeight: FontWeight.w500,
    fontFamily: 'Montserrat',
  );
  static TextStyle styleSemiBold16 = TextStyle(
    fontSize: getResonsiveFontSize(fontSize: 16),
    color: const Color(0xff064061),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
  );
  static TextStyle styleSemiBold20 = TextStyle(
    fontSize: getResonsiveFontSize(fontSize: 20),
    color: const Color(0xff064061),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
  );
  static TextStyle styleMeduim20 = TextStyle(
    fontSize: getResonsiveFontSize(fontSize: 20),
    color: const Color(0xffFFFFFF),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
  );
  static TextStyle styleRegular12 = TextStyle(
    fontSize: getResonsiveFontSize(fontSize: 12),
    color: const Color(0xffAAAAAA),
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
  );
  static TextStyle styleSemiBold24 = TextStyle(
    fontSize: getResonsiveFontSize(fontSize: 24),
    color: const Color(0xff4EB7F2),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
  );
  static TextStyle styleRegular14 = TextStyle(
    fontSize: getResonsiveFontSize(fontSize: 14),
    color: const Color(0xffAAAAAA),
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
  );
  static TextStyle styleSemiBold18 = TextStyle(
    fontSize: getResonsiveFontSize(fontSize: 18),
    color: const Color(0xffFFFFFF),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
  );
}

double getResonsiveFontSize({required double fontSize}) {
  double scaleFactor = getcaleFactor();
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

getcaleFactor() {
  // double width = MediaQuery.sizeOf(context).width;
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  var width = physicalWidth / devicePixelRatio;
  if (width < 800) {
    return width / 550;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
