import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/constants.dart';

final ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(iconTheme: IconThemeData(color: Colors.black)),
  textTheme: TextTheme(
    bodyText1: const TextStyle(
      color: Colors.black,
    ),
    bodyText2: const TextStyle(
      color: Colors.black,
    ),
    button: const TextStyle(
      color: Colors.black,
    ),
    headline1: const TextStyle(
      color: Colors.black,
    ),
    headline2: TextStyle(color: Colors.black, fontFamily: font),
    headline3: const TextStyle(
      color: Colors.black,
    ),
    headline4: const TextStyle(
      color: Colors.black,
    ),
    headline5: const TextStyle(
      color: Colors.black,
    ),
    headline6: const TextStyle(
      color: Colors.black,
    ),
    subtitle1: const TextStyle(
      color: Colors.black,
    ),
    subtitle2: const TextStyle(
      color: Colors.black,
    ),
    overline: const TextStyle(
      color: Colors.black,
    ),
    caption: const TextStyle(
      color: Colors.black,
    ),
  ),
);

final darkTheme = ThemeData.dark().copyWith(
  primaryColor: Colors.black,
  scaffoldBackgroundColor: darkBackGroundColor,
  cardColor: Colors.black,
  listTileTheme: const ListTileThemeData(),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.white, fontFamily: font),
    bodyText2: const TextStyle(
      color: Colors.white,
    ),
    button: const TextStyle(
      color: Colors.white,
    ),
    headline1: const TextStyle(
      color: Colors.white,
    ),
    headline2: TextStyle(color: Colors.white, fontFamily: font),
    headline3: const TextStyle(
      color: Colors.white,
    ),
    headline4: const TextStyle(
      color: Colors.white,
    ),
    headline5: const TextStyle(
      color: Colors.white,
    ),
    headline6: const TextStyle(
      color: Colors.white,
    ),
    subtitle1: const TextStyle(
      color: Colors.white,
    ),
    subtitle2: const TextStyle(
      color: Colors.white,
    ),
    overline: const TextStyle(
      color: Colors.white,
    ),
    caption: const TextStyle(
      color: Colors.white,
    ),
  ),
);
