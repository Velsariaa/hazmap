import 'package:flutter/material.dart';
import '../components/NavigationBar.dart';
import 'Home.dart'; // Import homepage if needed

class FourthFloorPage extends StatelessWidget {
  const FourthFloorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth Floor'),
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
                                'lib/assets/4thfloorevacplan.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),

                          Positioned(
                            left: containerWidth *
                                0.19, 
                            top: containerHeight *
                                0.825, 
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Electrical Room Info'),
                                      content: const Text(
                                          'Details about the Electrical Room component.'),
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
                                width: containerWidth * 0.47,
                                height: containerHeight * 0.10,
                                child: Image.asset(
                                  'lib/assets/electricalRoom.png',
                                  fit: BoxFit
                                      .contain, 
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            left: containerWidth *
                                0.17, 
                            top: containerHeight *
                                0.684, 
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Gen Science Lab Info'),
                                      content: const Text(
                                          'Details about the Gen Science Lab component.'),
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
                                width: containerWidth * 0.51,
                                height: containerHeight * 0.13,
                                child: Image.asset(
                                  'lib/assets/genSciLab.png',
                                  fit: BoxFit
                                      .contain, 
                                ),
                              ),
                            ),
                          ),

                            Positioned(
                            left: containerWidth *
                                0.17, 
                            top: containerHeight *
                                0.545, 
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Physics Lab Info'),
                                      content: const Text(
                                          'Details about the Physics Lab component.'),
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
                                width: containerWidth * 0.51,
                                height: containerHeight * 0.13,
                                child: Image.asset(
                                  'lib/assets/physicsLab.png',
                                  fit: BoxFit
                                      .contain, 
                                ),
                              ),
                            ),
                          ),

                        Positioned(
                            left: containerWidth *
                                0.17, 
                            top: containerHeight *
                                0.406, 
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Chemistry Lab Info'),
                                      content: const Text(
                                          'Details about the Chemistry Lab component.'),
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
                                width: containerWidth * 0.51,
                                height: containerHeight * 0.13,
                                child: Image.asset(
                                  'lib/assets/chemistryLab.png',
                                  fit: BoxFit
                                      .contain, 
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            left: containerWidth *
                                0.17, 
                            top: containerHeight *
                                0.269, 
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Biology Lab Info'),
                                      content: const Text(
                                          'Details about the Biology Lab component.'),
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
                                width: containerWidth * 0.51,
                                height: containerHeight * 0.13,
                                child: Image.asset(
                                  'lib/assets/bioLab.png',
                                  fit: BoxFit
                                      .contain, 
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
