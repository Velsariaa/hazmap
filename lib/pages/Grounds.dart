import 'package:flutter/material.dart';
import '../components/NavigationBar.dart';
import 'Home.dart';

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
                                'lib/assets/groundsevacplan.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Positioned(
                            left: containerWidth * 0.38,
                            top: containerHeight * 0.305,
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
                                  width: containerWidth * 0.053,
                                  height: containerHeight * 0.043,
                                  child: Image.asset(
                                    'lib/assets/legend_fallingobjects.png',
                                    fit: BoxFit.contain,
                                  ),
                                )),
                          ),

      Positioned(
                            left: containerWidth * 0.44,
                            top: containerHeight * 0.305,
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Pavilion Info'),
                                      content: const Text(
                                          'Details about the Paviliaaaon component.'),
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
                                width: containerWidth * 0.053,
                                height: containerHeight * 0.043,
                                child: Image.asset(
                                  'lib/assets/legend_earthquake.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: containerWidth * 0.30,
                            top: containerHeight * 0.145,
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
                                  width: containerWidth * 0.053,
                                  height: containerHeight * 0.043,
                                  child: Image.asset(
                                    'lib/assets/legend_broken.png',
                                    fit: BoxFit.contain,
                                  ),
                                )),
                          ),

                          Positioned(
                            left: containerWidth * 0.30,
                            top: containerHeight * 0.07,
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
                                  width: containerWidth * 0.053,
                                  height: containerHeight * 0.043,
                                  child: Image.asset(
                                    'lib/assets/legend_earthquake.png',
                                    fit: BoxFit.contain,
                                  ),
                                )),
                          ),

                          Positioned(
                            left: containerWidth * 0.67,
                            top: containerHeight * 0.07,
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
                                  width: containerWidth * 0.053,
                                  height: containerHeight * 0.043,
                                  child: Image.asset(
                                    'lib/assets/legend_broken.png',
                                    fit: BoxFit.contain,
                                  ),
                                )),
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
