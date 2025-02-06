import 'package:flutter/material.dart';
import '../components/NavigationBar.dart';

class LegendsPage extends StatelessWidget {
  const LegendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Legends Page'),
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/legendbg.png'), 
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height * 0.8,
            color: Color.fromARGB(255, 204, 204, 204).withOpacity(0.27),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Legends',
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.red,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
