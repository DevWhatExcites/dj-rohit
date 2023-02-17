import 'package:flutter/material.dart';
import 'package:ui/screens/landing_screen.dart';
import 'package:ui/screens/teams_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TeamsScreen(
        items: List<String>.generate(10000, (i) => 'Item $i'),
      ),
    );
  }
}
