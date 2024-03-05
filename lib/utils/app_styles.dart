import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context, fontSize: 16),
      color: const Color(0xff064061),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context, fontSize: 16),
      color: const Color(0xff4EB7F2),
      fontWeight: FontWeight.w700,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context, fontSize: 16),
      color: const Color(0xff064061),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context, fontSize: 16),
      color: const Color(0xff064061),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context, fontSize: 20),
      color: const Color(0xff064061),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleMeduim20(context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context, fontSize: 20),
      color: const Color(0xffFFFFFF),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context, fontSize: 12),
      color: const Color(0xffAAAAAA),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context, fontSize: 24),
      color: const Color(0xff4EB7F2),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context, fontSize: 14),
      color: const Color(0xffAAAAAA),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      fontSize: getResonsiveFontSize(context, fontSize: 18),
      color: const Color(0xffFFFFFF),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
    );
  }
}

double getResonsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getcaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

getcaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // var width = physicalWidth / devicePixelRatio;
  if (width < 800) {
    return width / 550;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
