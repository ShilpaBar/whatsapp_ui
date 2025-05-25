import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class WhatsAppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,

    scaffoldBackgroundColor: backgroundColor1,
    appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor1,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 23),
        elevation: 0,
        iconTheme: IconThemeData(size: 26, color: Colors.black)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: whatsappGreen,
      foregroundColor: Colors.white,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: backgroundColor1,
      indicatorColor: indicatorColor1, // Transparent WhatsApp Green
      labelTextStyle: MaterialStateProperty.all(TextStyle(color: Colors.black)),
      iconTheme: MaterialStateProperty.all(IconThemeData(color: Colors.black)),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: 17.0,
      ),
      bodyMedium: TextStyle(
        color: textColor1, // Light Gray
        fontSize: 15.0,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.withValues(alpha: .12),
      hintStyle: const TextStyle(
        color: textColor1, // Light Gray (hint text)
      ),
      border: OutlineInputBorder(
          borderSide: BorderSide.none, borderRadius: BorderRadius.circular(30)),
      prefixIconColor: textColor1,
    ),
    // primaryColor: const Color(0xFF34C759), // WhatsApp Green
    // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //     backgroundColor: backgroundColor1,
    //     selectedItemColor: Color(0xFF008069), // WhatsApp Green
    //     unselectedItemColor: Colors.black,
    //     selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
    //     unselectedLabelStyle: TextStyle(color: Colors.black)),

    // chipTheme: const ChipThemeData(
    //   backgroundColor: Color(0xFFECECEC),
    //   selectedColor: Color(0xFF34C759),
    // ),

    // bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
    // hintColor: const Color(0xFF25D366), // Lighter Green (Accent)

    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: const Color(0xFF25D366), // Lighter Green
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(20.0),
    //     ),
    //     padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
    //     textStyle: const TextStyle(
    //       color: Colors.white,
    //       fontSize: 16.0,
    //     ),
    //   ),
    // ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,

    scaffoldBackgroundColor: backgroundColor2, // Dark Background
    appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor2, // Darker WhatsApp Green
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold),
        elevation: 0,
        iconTheme: IconThemeData(size: 26, color: Colors.white)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: whatsappGreen,
      foregroundColor: Colors.black,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: backgroundColor2,
      indicatorColor:
          whatsappGreen.withValues(alpha: .22), // Transparent WhatsApp Green
      labelTextStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
      iconTheme: MaterialStateProperty.all(IconThemeData(color: Colors.white)),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 17.0,
      ),
      bodyMedium: TextStyle(
        color: textColor2, // Lighter Gray
        fontSize: 15.0,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.withValues(alpha: .14), // Darker Input Background
      hintStyle: const TextStyle(
        color: textColor2, // Lighter Gray (hint text)
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      prefixIconColor: textColor2,
    ),
    // primaryColor: const Color(0xFF34C759), // WhatsApp Green
    // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //   backgroundColor: Color(0xFF202C33), // WhatsApp dark mode bottom bar color
    //   selectedItemColor: Color(0xFF34C759),
    //   unselectedItemColor: Colors.grey,
    // ),
    // chipTheme: const ChipThemeData(
    //   backgroundColor: Color(0xFF2A2F32), // Updated dark chip color
    //   selectedColor: Color(0xFF34C759),
    // ),

    // bottomAppBarTheme: const BottomAppBarTheme(
    //   color: Color(0xFF202C33),
    // ),
    // hintColor: const Color(0xFF00A884), // Slightly Lighter Green

    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: const Color(0xFF00A884), // Lighter Green
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(20.0),
    //     ),
    //     padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
    //     textStyle: const TextStyle(
    //       color: Colors.white,
    //       fontSize: 16.0,
    //     ),
    //   ),
    // ),
  );
}
