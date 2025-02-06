import 'package:flutter/material.dart';
import '../components/NavigationBar.dart'; 

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const navbar(), // Add NavigationBar
      body: const Center(
        child: Text('This is the About Page!'),
      ),
    );
  }
}
