import 'package:flutter/material.dart';
import '../components/NavigationBar.dart'; 
import 'Home.dart';

class FifthFloorPage extends StatelessWidget {
  const FifthFloorPage({super.key});

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
                                'lib/assets/5thfloorevacplan.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          // Room 510
                          Positioned(
                            left: containerWidth * 0.39,
                            top: containerHeight * 0.779,
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
                          

                          //Room 511
                          Positioned(
                            left: containerWidth * 0.38,
                            top: containerHeight * 0.672,
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

                          Positioned(
                            left: containerWidth * 0.423,
                            top: containerHeight * 0.672,
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
                            left: containerWidth * 0.443,
                            top: containerHeight * 0.646,
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
                            left: containerWidth * 0.423,
                            top: containerHeight * 0.617,
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

                          
                          Positioned(
                            left: containerWidth * 0.411,
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
                                 width: containerWidth * 0.037,
                                 height: containerHeight * 0.027,
                                child: Image.asset(
                                  'lib/assets/legend_broken.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          //Room 512
                          Positioned(
                            left: containerWidth * 0.443,
                            top: containerHeight * 0.525,
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
                            left: containerWidth * 0.415,
                            top: containerHeight * 0.4875,
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
                                  'lib/assets/legend_earthquake.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          // Room 513
                          Positioned(
                            left: containerWidth * 0.38,
                            top: containerHeight * 0.382,
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

                          //Room 513 
                          Positioned(
                            left: containerWidth * 0.443,
                            top: containerHeight * 0.325,
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

                          //Room 508
                          Positioned(
                            left: containerWidth * 0.735,
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
                            left: containerWidth * 0.709,
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
                                width: containerWidth * 0.037,
                                 height: containerHeight * 0.027,
                                child: Image.asset(
                                  'lib/assets/legend_exposedwires.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            left: containerWidth * 0.765,
                            top: containerHeight * 0.608,
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
                            left: containerWidth * 0.77,
                            top: containerHeight * 0.64,
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
                                  'lib/assets/legend_earthquake.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          //Room 507
                          Positioned(
                            left: containerWidth * 0.755,
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
                                  'lib/assets/legend_earthquake.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            left: containerWidth * 0.755,
                            top: containerHeight * 0.528,
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
                            left: containerWidth * 0.744,
                            top: containerHeight * 0.496,
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

                          Positioned(
                            left: containerWidth * 0.765,
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
                                width: containerWidth * 0.037,
                                 height: containerHeight * 0.027,
                                child: Image.asset(
                                  'lib/assets/legend_fallingobjects.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          //Room 506
                          
                          Positioned(
                            left: containerWidth * 0.750,
                            top: containerHeight * 0.445,
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

                          Positioned(
                            left: containerWidth * 0.695,
                            top: containerHeight * 0.412,
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
                            left: containerWidth * 0.744,
                            top: containerHeight * 0.385,
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

                          Positioned(
                            left: containerWidth * 0.765,
                            top: containerHeight * 0.374,
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
                                  'lib/assets/legend_fallingobjects.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          //Room 505
                          Positioned(
                            left: containerWidth * 0.740,
                            top: containerHeight * 0.3315,
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
                                  'lib/assets/legend_earthquake.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            left: containerWidth * 0.779,
                            top: containerHeight * 0.287,
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
                            left: containerWidth * 0.732,
                            top: containerHeight * 0.265,
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
                                  'lib/assets/legend_fallingobjects.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          // Room 504
                          Positioned(
                            left: containerWidth * 0.441,
                            top: containerHeight * 0.022,
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
                          //Room 503 
                          Positioned(
                            left: containerWidth * 0.469,
                            top: containerHeight * 0.1,
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
                                  'lib/assets/legend_fallingobjects.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: containerWidth * 0.490,
                            top: containerHeight * 0.040,
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
                            left: containerWidth * 0.509,
                            top: containerHeight * 0.022,
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
                          //Room 502
                          Positioned(
                            left: containerWidth * 0.552,
                            top: containerHeight * 0.1,
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
                            left: containerWidth * 0.552,
                            top: containerHeight * 0.037,
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
                                  'lib/assets/legend_fallingobjects.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          // Room 501
                          Positioned(
                            left: containerWidth * 0.611,
                            top: containerHeight * 0.092,
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
                                  'lib/assets/legend_earthquake.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            left: containerWidth * 0.599,
                            top: containerHeight * 0.038,
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
                                  'lib/assets/legend_fallingobjects.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            left: containerWidth * 0.623,
                            top: containerHeight * 0.022,
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
