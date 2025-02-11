import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 67, 157, 15)),
        useMaterial3: true,
      ),
      home: const BottomNavBar()
    );
  }
}


