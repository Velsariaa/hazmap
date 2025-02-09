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
                aspectRatio: 9 / 16, // Adjusted aspect ratio
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double containerWidth = constraints.maxWidth;
                    double containerHeight = constraints.maxHeight;

                    return Stack(
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

                        // Pavilion Button (Scaled)
                        Positioned(
                          left: containerWidth * 0.27, // Adjust position as needed
                          top: containerHeight * 0.41, // Adjust position as needed
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
                              width: containerWidth * 0.47, 
                              height: containerHeight * 0.38, 
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
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
