import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

ThemeData MyThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: Colors.pink,
    backgroundColor: Colors.pink,
    brightness: Brightness.dark,
    buttonTheme: ButtonTheme.of(context).copyWith(
      buttonColor: Colors.pink,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.pink,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontStyle: FontStyle.italic,
      ),
      centerTitle: true,
    ),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Colors.deepPurple),
  );
}
