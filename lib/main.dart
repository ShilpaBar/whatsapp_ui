import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants/theme.dart';

import 'responsive/responsive_layout.dart';
import 'screens/mobile_screen_layout.dart';
import 'screens/web_screen_layout.dart';

// Light mode colors
const Color primaryColor1 = Color(0xFF34C759);
const Color backgroundColor1 = Color(0xFFFFFFFF);
const Color textColor1 = Color(0xFF333333);

// Dark mode colors
const Color primaryColor2 = Color(0xFF34C759);
const Color backgroundColor2 = Color(0xFF1A1D23);
const Color textColor2 = Color(0xFF99999);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp UI',
      themeMode: ThemeMode.system,
      theme: WhatsAppTheme.lightTheme,
      darkTheme: WhatsAppTheme.darkTheme,
      home: ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
