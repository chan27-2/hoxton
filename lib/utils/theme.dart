import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myTheme = ThemeData(
  primaryColor: MyThemePalette.primaryColor,
  scaffoldBackgroundColor: MyThemePalette.whiteColor,
  appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: MyThemePalette.whiteColor,
      iconTheme: IconThemeData(color: MyThemePalette.blackColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent, // Navigation bar
        statusBarColor: Colors.transparent, // Status bar
      )),
  textTheme:
      GoogleFonts.robotoTextTheme().apply(bodyColor: MyThemePalette.whiteColor),
);

class MyThemePalette {
  static const primaryColor = Color(0xff171D3C);
  static const blackColor = Color.fromARGB(255, 0, 0, 0);
  static const backgroundDarkColor = Color(0xff171D3C);
  static const whiteColor = Color(0xffffffff);
  static const greenColor = Color(0xff3CD942);
  static const greyColor = Color(0xff7C828A);
  static const blueColor = Color(0xff147AD6);
}
