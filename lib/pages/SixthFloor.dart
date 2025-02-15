import 'package:flutter/material.dart';
import '../components/NavigationBar.dart'; 
import 'Home.dart';

class SixthFloorPage extends StatelessWidget {
  const SixthFloorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF292746),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Center(
            child: Image.asset(
            'lib/assets/hazHeader.png',
            height: 40,
            ),
        ),
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
                                      title: Row(
                                        children: [
                                          Image.asset(
                                            'lib/assets/brokenLeg.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            'Broken',
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Broken',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' items can lead to sharp edges, spills, or other hazards depending on the nature of the object.',
                                                  ),
                                                ],
                                              ),
                                              style: TextStyle(fontSize: 16),
                                            ),

                                            const SizedBox(height: 10),
                                            const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Ex:',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' Shattered glass, broken tools, damaged furniture.',
                                                  ),
                                                ],
                                              ),
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            
                                            const SizedBox(height: 12),
                                            const Text(
                                              'What to do:',
                                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                                            ),
                                            const SizedBox(height: 8),
                                            _safetyTip('lib/assets/broken1.png', 'Avoid touching broken objects, especially if they are sharp or hazardous.'),
                                            _safetyTip('lib/assets/broken2.png', 'Report it to school staff for proper cleanup and disposal.'),
                                            _safetyTip('lib/assets/broken3.png', 'If handling glass or dangerous materials, use gloves and proper disposal methods.'),
                                            _safetyTip('lib/assets/broken4.png', 'Keep the area clear to prevent injuries.'),
                                            _safetyTip('lib/assets/broken5.png', 'Mark the area or place a warning sign to alert others of the hazard.'),
                                          ],
                                        ),
                                      ),
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
                                      title: Row(
                                        children: [
                                          Image.asset(
                                            'lib/assets/electricalLeg.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            'Electrical Wirings',
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Electric wiring',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' hazards refer to potential dangers associated with the installation, maintenance and use of electrical systems in buildings. These hazards can include electrical shocks, fires, and other safety risks that can result from faulty wiring or improper installation practices.',
                                                  ),
                                                ],
                                              ),
                                              style: TextStyle(fontSize: 16),
                                            ),

                                            const SizedBox(height: 10),
                                            const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Ex:',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' Exposed wires, overloaded power outlets, improper grounding, old or faulty wiring',
                                                  ),
                                                ],
                                              ),
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            
                                            const SizedBox(height: 12),
                                            const Text(
                                              'What to do:',
                                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                                            ),
                                            const SizedBox(height: 8),
                                            _safetyTip('lib/assets/electrical1.png', 'Ensure circuit breakers and fuses are functional to prevent overloads.'),
                                            _safetyTip('lib/assets/electrical2.png', 'Distribute electrical loads properly to prevent overheating and fires.'),
                                            _safetyTip('lib/assets/electrical3.png', 'Secure and organize wires to prevent tripping hazards and damage.'),
                                            _safetyTip('lib/assets/electrical4.png', 'Keep electrical components away from water sources to prevent shocks.'),
                                            _safetyTip('lib/assets/electrical5.png', 'Mark the area or place a warning sign to alert others of the hazard.Check outlets, switches, and appliances for excessive heat buildup.'),
                                          ],
                                        ),
                                      ),
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
                                      title: Row(
                                        children: [
                                          Image.asset(
                                            'lib/assets/brokenLeg.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            'Broken',
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Broken',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' items can lead to sharp edges, spills, or other hazards depending on the nature of the object.',
                                                  ),
                                                ],
                                              ),
                                              style: TextStyle(fontSize: 16),
                                            ),

                                            const SizedBox(height: 10),
                                            const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Ex:',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' Shattered glass, broken tools, damaged furniture.',
                                                  ),
                                                ],
                                              ),
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            
                                            const SizedBox(height: 12),
                                            const Text(
                                              'What to do:',
                                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                                            ),
                                            const SizedBox(height: 8),
                                            _safetyTip('lib/assets/broken1.png', 'Avoid touching broken objects, especially if they are sharp or hazardous.'),
                                            _safetyTip('lib/assets/broken2.png', 'Report it to school staff for proper cleanup and disposal.'),
                                            _safetyTip('lib/assets/broken3.png', 'If handling glass or dangerous materials, use gloves and proper disposal methods.'),
                                            _safetyTip('lib/assets/broken4.png', 'Keep the area clear to prevent injuries.'),
                                            _safetyTip('lib/assets/broken5.png', 'Mark the area or place a warning sign to alert others of the hazard.'),
                                          ],
                                        ),
                                      ),
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
                                      title: Row(
                                        children: [
                                          Image.asset(
                                            'lib/assets/electricalLeg.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            'Electrical Wirings',
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Electric wiring',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' hazards refer to potential dangers associated with the installation, maintenance and use of electrical systems in buildings. These hazards can include electrical shocks, fires, and other safety risks that can result from faulty wiring or improper installation practices.',
                                                  ),
                                                ],
                                              ),
                                              style: TextStyle(fontSize: 16),
                                            ),

                                            const SizedBox(height: 10),
                                            const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Ex:',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' Exposed wires, overloaded power outlets, improper grounding, old or faulty wiring',
                                                  ),
                                                ],
                                              ),
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            
                                            const SizedBox(height: 12),
                                            const Text(
                                              'What to do:',
                                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                                            ),
                                            const SizedBox(height: 8),
                                            _safetyTip('lib/assets/electrical1.png', 'Ensure circuit breakers and fuses are functional to prevent overloads.'),
                                            _safetyTip('lib/assets/electrical2.png', 'Distribute electrical loads properly to prevent overheating and fires.'),
                                            _safetyTip('lib/assets/electrical3.png', 'Secure and organize wires to prevent tripping hazards and damage.'),
                                            _safetyTip('lib/assets/electrical4.png', 'Keep electrical components away from water sources to prevent shocks.'),
                                            _safetyTip('lib/assets/electrical5.png', 'Mark the area or place a warning sign to alert others of the hazard.Check outlets, switches, and appliances for excessive heat buildup.'),
                                          ],
                                        ),
                                      ),
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

  Widget _safetyTip(String imagePath, String text, {bool isLarge = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          width: isLarge ? 155 : 55, // Make the Drop, Cover, and Hold image 3x larger
          height: isLarge ? 90 : 55,  // Adjust height proportionally
          fit: BoxFit.contain,
        ),
        const SizedBox(width: 15), // Add space between image and text
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 14),
          ),
        ),
      ],
    ),
  );
}
}
