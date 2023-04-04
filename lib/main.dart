import 'package:flutter/material.dart';
import 'package:trackr/dashboard.dart';
import 'package:trackr/login.dart';
import 'package:trackr/splashscreen.dart';
import 'package:trackr/otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'trackr',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const SplashScreen(),
      initialRoute: 'splash',
      routes: {
        'dashboard': (context) => DashBoard(),
        'splash': (context) => SplashScreen(),
        'login': (context) => Login(),
        'otp': (context) => OTP(),
      },
    );
  }
}
