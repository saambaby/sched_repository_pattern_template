// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppTheme {
  ///LIGHT MODE
  ///

  static const Color _scaffoldColorLight = Color(0xfff5f5f5);
  static Color shadowColor = Colors.grey.withOpacity(.1);
  static const Color _primaryColorLight = Color(0xffa686cd);
  static const Color _buttonColor = Color(0xfff6596e);

  static const Color _secondaryColorLight = Color(0xfff5ded3);

  static const Color _errorColorLight = Color(0xfffe0e3c);

  ///DARK MODE
  ///
  static const Color _scaffoldColorDark = Color(0xff121212);

  static const Color _primaryColorDark = Color(0xffb7b7a4);
  static const Color _secondaryColorDark = Color(0xffffe8d6);

  static const Color _errorColorDark = Color(0xffcf6679);

  static ThemeData light() {
    return ThemeData.light().copyWith(
      primaryColor: _primaryColorLight,
      primaryColorDark: _buttonColor,
      primaryColorLight: _primaryColorLight,
      shadowColor: shadowColor,
      errorColor: _errorColorLight,
      scaffoldBackgroundColor: _scaffoldColorLight,
      disabledColor: Colors.white.withOpacity(0.15),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Colors.white,
      ),
      colorScheme: const ColorScheme.light().copyWith(
        primary: _primaryColorLight,
        primaryVariant: _primaryColorLight,
        secondary: _secondaryColorLight,
        secondaryVariant: _scaffoldColorLight,
        error: _errorColorLight,
      ),
      inputDecorationTheme: inputDecorationTheme(),
      textTheme:  const TextTheme(
        headline1:TextStyle(
          fontFamily: "BrandonGrotesque Bold",
          fontSize: 32,
          fontWeight: FontWeight.w900,
          letterSpacing: -1.5,
          color: Colors.black,
        ),
        headline2:TextStyle(
          fontFamily: "BrandonGrotesque Bold",
          fontSize: 28,
          fontWeight: FontWeight.w800,
          letterSpacing: -1.0,
          color: Colors.black,
        ),
        headline3:TextStyle(
          fontFamily: "BrandonGrotesque Bold",
          fontSize: 24,
          fontWeight: FontWeight.w800,
          letterSpacing: -0.75,
          color: Colors.black,
        ),
        headline4:  TextStyle(
          fontFamily: "BrandonGrotesque Bold",
          fontSize: 20,
          fontWeight: FontWeight.w800,
          letterSpacing: -0.50,
          color: Colors.black,
        ),
        headline5: TextStyle(
          fontFamily: "BrandonGrotesque Bold",
          fontSize: 18,
          fontWeight: FontWeight.w800,
          letterSpacing: -0.5,
          color: Colors.black,
        ),

        headline6:TextStyle(
        fontFamily: "BrandonGrotesque Bold",
          fontSize: 12,
          fontWeight: FontWeight.w700,
          letterSpacing: 1,
          color: Colors.black,
        ),
        subtitle1: TextStyle(
          fontFamily: "BrandonGrotesque Book",
          fontSize: 16,
          letterSpacing: 0.15,
          color: Colors.black,
        ),
        subtitle2: TextStyle(
          fontFamily: "BrandonGrotesque Book",
          fontSize: 14,
          letterSpacing: 0.1,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        caption:TextStyle(
          fontFamily: "BrandonGrotesque Book",
          fontSize: 12,
          color: Colors.black,
        ),
        bodyText1: TextStyle(
          fontFamily: "BrandonGrotesque Book",
          fontSize: 16,
          letterSpacing: 0.5,
          color: Colors.black,
        ),
        bodyText2: TextStyle(
          fontFamily: "BrandonGrotesque Book",
          fontSize: 14,
          letterSpacing: 0.25,
          color: Colors.black,
        ),

        //BUTTON
        button:TextStyle(
          fontFamily: "BrandonGrotesque Book",

          fontSize: 11,
          letterSpacing: 1.25,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }

 static  InputDecorationTheme inputDecorationTheme() {
    var outlineInputBorder = OutlineInputBorder(
      gapPadding: 12,
      borderSide: BorderSide(
        color: shadowColor,
        width: 0,
      ),

    );
    return InputDecorationTheme(
    // labelStyle: const TextStyle(color: Color(0xFF54E597), fontSize: 20.0, height: 0.8),
      hintStyle: const TextStyle(
        fontFamily: 'CircularStd',
        fontSize: 14,
        letterSpacing: 0.75,
        color: Colors.black,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder.copyWith( borderSide:const BorderSide(
      color: Colors.white,
      width: 1,
    ),),
    border: outlineInputBorder);
  }
}