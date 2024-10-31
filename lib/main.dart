import 'package:flutter/material.dart';
import 'package:payroll/core/config/theme/dark_theme.dart';
import 'package:payroll/core/config/theme/light_theme.dart';
import 'package:payroll/features/auth/presentation/mobile/mobile_login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PayRoll',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const MobileLoginView(),
    );
  }
}
