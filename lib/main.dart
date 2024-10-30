

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const YouTubeHomePageApp());
}

class YouTubeHomePageApp extends StatelessWidget {
  const YouTubeHomePageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), // Dark theme like YouTube
      home: const HomeScreen(),
    );
  }
}
