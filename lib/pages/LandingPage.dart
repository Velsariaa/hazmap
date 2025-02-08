import 'package:flutter/material.dart';
import '../components/NavigationBar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Landing Page'),
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
      drawer: const navbar(),
      body: Stack(
        children: [
          // Background image covering the entire screen
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/loading-bg.png'), // Ensure the image exists in your assets
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              // Logo at the middle top
              const SizedBox(height: 100),
              Center(
                child: Image.asset(
                  'lib/assets/hazLogo.png', // Ensure the logo image exists in your assets
                  width: 150,
                  height: 150,
                ),
              ),
              const Spacer(),
              // "Get Started" button at the middle bottom
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Define navigation or action here
                    Navigator.pushNamed(context, '/home');
                  },
                  child: const Text('Get Started'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}
