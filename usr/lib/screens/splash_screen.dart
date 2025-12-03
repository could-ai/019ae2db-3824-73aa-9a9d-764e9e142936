import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  _navigateToLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.local_taxi,
              size: 100,
              color: Colors.black,
            ),
            const SizedBox(height: 20),
            const Text(
              'Apni Taxi',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Your Ride, Your Way',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 50),
            const CircularProgressIndicator(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
