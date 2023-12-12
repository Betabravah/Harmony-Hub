import 'package:flutter/material.dart';

import 'features/music/presentation/screens/home_page.dart';
import 'features/music/presentation/screens/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harmony',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
            bodyLarge: TextStyle(
                fontSize: 35, fontFamily: 'Poppins', color: Colors.white),
            bodySmall: TextStyle(
                fontSize: 16, color: Colors.grey, fontFamily: 'Poppins'),
            displayLarge: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5)),
      ),
      home: const Scaffold(
        body: HomePage(),
      ),
    );
  }
}
