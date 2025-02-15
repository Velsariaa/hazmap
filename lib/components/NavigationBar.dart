import 'package:flutter/material.dart';
import '../pages/About.dart';
import '../pages/Legends.dart';
import '../pages/Home.dart';

class navbar extends StatelessWidget {
  const navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            color: const Color(0xFF292746),
            padding: const EdgeInsets.all(16),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'HazMap',
                style: TextStyle(
                  fontSize: 16, // Smaller font size
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Legends'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LegendsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
