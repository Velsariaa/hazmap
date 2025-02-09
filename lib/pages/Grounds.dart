import 'package:flutter/material.dart';
import '../components/NavigationBar.dart'; 

class GroundsPage extends StatelessWidget {
  const GroundsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grounds'),
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
        child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height * 0.95,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 226, 226, 226).withOpacity(0.27),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                
                padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                child: Image.asset('lib/assets/groundsevacplan.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
