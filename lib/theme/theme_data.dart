import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

ThemeData MyThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
        color: Color(0xffb5174d),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontStyle: FontStyle.italic,
        ),
        centerTitle: true,
      ),
      buttonTheme: ButtonTheme.of(context).copyWith(
        buttonColor: Color(0xffe91e63),
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      // textTheme: TextTheme(
      //   bodyText1: TextStyle(color: Colors.black),
      //   bodyText2: TextStyle(color: Colors.black),
      //   headline1: TextStyle(
      //     fontSize: 15,
      //     fontStyle: FontStyle.italic,
      //     fontWeight: FontWeight.w300,
      //     color: Colors.black,
      //   ),
      //   headline6: TextStyle(
      //     fontSize: 16,
      //     color: Colors.black,
      //     fontWeight: FontWeight.w300,
      //   ),
      // ),

      backgroundColor: Color(0xffe91e63),
      colorScheme: const ColorScheme(
        primary: Color(0xffe91e63),
        primaryVariant: Color(0xffb5174d),
        secondary: Colors.amber,
        secondaryVariant: Color(0xffcc9a05),
        surface: Color(0xfff2f2f2),
        background: Colors.green,
        error: Colors.red,
        onPrimary: Colors.amber,
        onSecondary: Colors.green,
        onSurface: Colors.white54,
        onBackground: Colors.green,
        onError: Colors.red,
        brightness: Brightness.dark,
      )

      // ColorScheme.fromSwatch().copyWith(secondary: Colors.deepPurple),
      );
}
