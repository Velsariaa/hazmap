import 'package:flutter/material.dart';
import 'pages/LandingPage.dart';
import 'pages/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Haz Map',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/home': (context) => const HomePage(),
      },
      debugShowCheckedModeBanner: false, // Removes the debug banner
    );
  }
}
