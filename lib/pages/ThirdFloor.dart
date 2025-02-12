import 'package:flutter/material.dart';
import '../components/NavigationBar.dart'; 
import 'Home.dart';


class ThirdFloorPage extends StatelessWidget {
  const ThirdFloorPage({super.key});

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
                                'lib/assets/3rdfloorevacplan.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          // Room 310
                          Positioned(
                            left: containerWidth * 0.405,
                            top: containerHeight * 0.780,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_broken.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: containerWidth * 0.405,
                            top: containerHeight * 0.705,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_exposedwires.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          //Room 311
                          Positioned(
                            left: containerWidth * 0.405,
                            top: containerHeight * 0.665,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_broken.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: containerWidth * 0.405,
                            top: containerHeight * 0.595,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_exposedwires.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          //Room 312
                          Positioned(
                            left: containerWidth * 0.405,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_broken.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: containerWidth * 0.405,
                            top: containerHeight * 0.485,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_exposedwires.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          // Room 309
                          Positioned(
                            left: containerWidth * 0.730,
                            top: containerHeight * 0.780,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_broken.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: containerWidth * 0.730,
                            top: containerHeight * 0.705,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_exposedwires.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          //Room 308
                          Positioned(
                            left: containerWidth * 0.730,
                            top: containerHeight * 0.665,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_broken.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: containerWidth * 0.730,
                            top: containerHeight * 0.595,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_exposedwires.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          //Room 307
                          Positioned(
                            left: containerWidth * 0.730,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_broken.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: containerWidth * 0.730,
                            top: containerHeight * 0.485,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_exposedwires.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          //Room 306
                          Positioned(
                            left: containerWidth * 0.730,
                            top: containerHeight * 0.443,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_broken.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          //Room 302
                          Positioned(
                            left: containerWidth * 0.538,
                            top: containerHeight * 0.083,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.057,
                                child: Image.asset(
                                  'lib/assets/legend_broken.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: containerWidth * 0.538,
                            top: containerHeight * 0.027,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_exposedwires.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          //Room 301
                           Positioned(
                            left: containerWidth * 0.600,
                            top: containerHeight * 0.083,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.057,
                                child: Image.asset(
                                  'lib/assets/legend_broken.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: containerWidth * 0.600,
                            top: containerHeight * 0.027,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_exposedwires.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            left: containerWidth * 0.640,
                            top: containerHeight * 0.057,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_exposedwires.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          //Room 303
                          Positioned(
                            left: containerWidth * 0.478,
                            top: containerHeight * 0.083,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.057,
                                child: Image.asset(
                                  'lib/assets/legend_broken.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: containerWidth * 0.478,
                            top: containerHeight * 0.027,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.037,
                                child: Image.asset(
                                  'lib/assets/legend_exposedwires.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          //Room 304
                          Positioned(
                            left: containerWidth * 0.416,
                            top: containerHeight * 0.083,
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
                                width: containerWidth * 0.047,
                                height: containerHeight * 0.057,
                                child: Image.asset(
                                  'lib/assets/legend_broken.png',
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
