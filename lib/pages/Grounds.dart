import 'package:flutter/material.dart';
import '../components/NavigationBar.dart';
import 'Home.dart';
import 'FirstFloor.dart';

class GroundsPage extends StatelessWidget {
  const GroundsPage({super.key});

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
                                'lib/assets/groundsevacplan.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),

                          Positioned(
                            left: containerWidth * 0.375,
                            top: containerHeight * 0.305,
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Row(
                                        children: [
                                          Image.asset(
                                            'lib/assets/fallingLeg.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            'Falling Objects',
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
                                                    text: 'Falling objects',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' pose a hazard when items are dropped or displaced from elevated positions. These objects can cause injuries or damage depending on their size and height. The risk is common in areas with high shelving, scaffolding, or overhead storage.',
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
                                                    text: ' Tools, equipment, and furniture.',
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
                                            _safetyTip('lib/assets/falling1.png', 'Move to an open area. If indoors, stay close to an interior wall away from hazards.'),
                                            _safetyTip('lib/assets/falling2.png', 'Seek shelter or cover your head and neck with your arms or a nearby object.'),
                                            _safetyTip('lib/assets/falling3.png', 'If you get an injury, apply pressure to bleeding wounds using a clean cloth. Apply ice packs to reduce swelling and pain.'),
                                            _safetyTip('lib/assets/falling4.png', 'Rest the injured area to prevent further damage by stabilizing it with a sling.'),
                                            _safetyTip('lib/assets/falling5.png', 'Seek medical attention immediately for severe injuries.'),
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
                                width: containerWidth * 0.053,
                                height: containerHeight * 0.043,
                                child: Image.asset(
                                  'lib/assets/legend_fallingobjects.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
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
                                      title: Row(
                                        children: [
                                          Image.asset(
                                            'lib/assets/earthquakeLeg.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            'Earthquake',
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start, // Keep content aligned left
                                          children: [
                                            const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Earthquakes',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' make the ground shake and can cause buildings to crack or collapse. They may also trigger landslides and damage roads and power lines.',
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
                                                    text: ' Cracks in walls or floors, and the shifting or falling of heavy objects.',
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
                                            _centeredSafetyTip('lib/assets/dropCoverHold.png', 'Drop, Cover, and Hold under a sturdy table or desk.'),
                                            _safetyTip('lib/assets/earth2.png', 'Stay away from windows, shelves, or anything that might fall.'),
                                            _safetyTip('lib/assets/earth3.png', 'If you’re outside, move to an open space away from buildings, trees, and power lines.'),
                                            _safetyTip('lib/assets/earth4.png', 'Once the shaking stops, check for safety, evacuate if needed, and follow emergency instructions.'),
                                            _safetyTip('lib/assets/earth5.png', 'Be prepared for aftershocks and stay alert for further hazards.'),
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
                                width: containerWidth * 0.053,
                                height: containerHeight * 0.043,
                                child: Image.asset(
                                  'lib/assets/legend_broken.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
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
                                      title: Row(
                                        children: [
                                          Image.asset(
                                            'lib/assets/earthquakeLeg.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            'Earthquake',
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start, // Keep content aligned left
                                          children: [
                                            const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Earthquakes',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' make the ground shake and can cause buildings to crack or collapse. They may also trigger landslides and damage roads and power lines.',
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
                                                    text: ' Cracks in walls or floors, and the shifting or falling of heavy objects.',
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
                                            _centeredSafetyTip('lib/assets/dropCoverHold.png', 'Drop, Cover, and Hold under a sturdy table or desk.'),
                                            _safetyTip('lib/assets/earth2.png', 'Stay away from windows, shelves, or anything that might fall.'),
                                            _safetyTip('lib/assets/earth3.png', 'If you’re outside, move to an open space away from buildings, trees, and power lines.'),
                                            _safetyTip('lib/assets/earth4.png', 'Once the shaking stops, check for safety, evacuate if needed, and follow emergency instructions.'),
                                            _safetyTip('lib/assets/earth5.png', 'Be prepared for aftershocks and stay alert for further hazards.'),
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
                            left: containerWidth * 0.67,
                            top: containerHeight * 0.07,
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
                                width: containerWidth * 0.053,
                                height: containerHeight * 0.043,
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
                            builder: (context) => const FirstFloorPage()),
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
  Widget _safetyTip(String imagePath, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          width: 55,
          height: 55,
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

Widget _centeredSafetyTip(String imagePath, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 155,
          height: 90,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}


}
