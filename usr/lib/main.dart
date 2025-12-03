import 'package:flutter/material.dart';
import 'package:couldai_user_app/theme/app_theme.dart';
import 'package:couldai_user_app/screens/splash_screen.dart';
import 'package:couldai_user_app/screens/login_screen.dart';
import 'package:couldai_user_app/screens/home_screen.dart';

void main() {
  runApp(const ApniTaxiApp());
}

class ApniTaxiApp extends StatelessWidget {
  const ApniTaxiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apni Taxi',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
