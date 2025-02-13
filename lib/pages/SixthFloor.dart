import 'package:flutter/material.dart';
import '../components/NavigationBar.dart'; 
import 'Home.dart';

class SixthFloorPage extends StatelessWidget {
  const SixthFloorPage({super.key});

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
        child: Column(
          children: [
           
            Expanded(
              child: Center(
                child: AspectRatio(
                  aspectRatio: 9 / 16,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      double containerWidth = constraints.maxWidth;
                      double containerHeight = constraints.maxHeight;

                      return Stack(
                        children: [
                          
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 226, 226, 226)
                                    .withOpacity(0.27),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'lib/assets/6thfloorevacplan.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        //Room 608
                        Positioned(
                            left: containerWidth * 0.431,
                            top: containerHeight * 0.555,
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
                              child: SizedBox(
                                 width: containerWidth * 0.037,
                                height: containerHeight * 0.027,
                                child: Image.asset(
                                  'lib/assets/legend_broken.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: containerWidth * 0.389,
                            top: containerHeight * 0.493,
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
                              child: SizedBox(
                                width: containerWidth * 0.037,
                                height: containerHeight * 0.027,
                                child: Image.asset(
                                  'lib/assets/legend_exposedwires.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          //Room 605
                          Positioned(
                            left: containerWidth * 0.773,
                            top: containerHeight * 0.747,
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
                              child: SizedBox(
                                width: containerWidth * 0.037,
                                height: containerHeight * 0.027,
                                child: Image.asset(
                                  'lib/assets/legend_broken.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: containerWidth * 0.745,
                            top: containerHeight * 0.715,
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
                              child: SizedBox(
                                width: containerWidth * 0.037,
                                height: containerHeight * 0.027,
                                child: Image.asset(
                                  'lib/assets/legend_exposedwires.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          




                        ],
                      );
                    },
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Navigation buttons
            Padding(
              padding: const EdgeInsets.only(bottom: 10), 
              child: Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
