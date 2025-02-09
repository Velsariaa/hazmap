import 'package:flutter/material.dart';
import '../components/NavigationBar.dart';
import 'Home.dart'; // Import homepage if needed

class FirstFloorPage extends StatelessWidget {
  const FirstFloorPage({super.key});

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
        padding: const EdgeInsets.all(12.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/legendbg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Map container with fixed aspect ratio
              AspectRatio(
                aspectRatio: 9 / 16, // Adjust aspect ratio based on your image
                child: Stack(
                  children: [
                    // Background map image
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 226, 226, 226)
                              .withOpacity(0.27),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'lib/assets/groundsevacplan.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                    // Pavilion Button (Positioned based on percentage)
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.3, // Adjust as needed
                      top: MediaQuery.of(context).size.height * 0.2, // Adjust as needed
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Pavilion Info'),
                                content: const Text(
                                    'Details about the Pavilion component.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Close'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Image.asset(
                          'lib/assets/pavillionbtn.png',
                          width: 60, // Fixed size for button
                          height: 60,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Navigation buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_left, size: 40),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                  ),
                  const SizedBox(width: 50),
                  IconButton(
                    icon: const Icon(Icons.arrow_right, size: 40),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
