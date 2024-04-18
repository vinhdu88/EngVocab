// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Color.fromARGB(255, 255, 255, 255),
    primary: Color.fromARGB(255, 244, 244, 244),
    secondary: Color.fromARGB(255, 255, 255, 255),
    primaryContainer: Colors.black,
  ),
  primaryColor: Colors.black,
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Color.fromARGB(255, 19, 19, 19),
    primary: Color.fromARGB(255, 43, 43, 43),
    secondary: Color.fromARGB(255, 85, 85, 85),
    primaryContainer: Colors.white,
  ),
  primaryColor: Colors.grey[400],
  
);
