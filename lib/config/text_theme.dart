import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Avenir',
    textTheme: const TextTheme(),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    headlineLarge: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontSize: 18,
    ),
    headlineMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 10,
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 8,
    ),
    bodyLarge: TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 12,
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 10,
    ),
  );
}
