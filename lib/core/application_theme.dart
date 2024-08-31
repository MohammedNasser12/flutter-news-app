import 'package:flutter/material.dart';
import 'package:news_app/core/colors.dart';

class ApplicationTheme {
  static ThemeData themeData = ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: PalletsColors.green,
        toolbarHeight: 93,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50)),
        ),
      ),
      textTheme: TextTheme(
        bodySmall: TextStyle(fontFamily: "Inter", fontSize: 14),
        titleLarge: TextStyle(fontFamily: "Poppins", fontSize: 28),
        titleMedium:
            TextStyle(fontFamily: "Exo", fontSize: 22, color: Colors.white),
      ));
}
