import 'package:flutter/material.dart';
import '../components/NavigationBar.dart'; 
import 'Home.dart';
import 'FourthFloor.dart';
import 'SixthFloor.dart';

class FifthFloorPage extends StatelessWidget {
  const FifthFloorPage({super.key});

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

                          Positioned(
                            left: containerWidth * 0.423,
                            top: containerHeight * 0.672,
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
                            left: containerWidth * 0.443,
                            top: containerHeight * 0.646,
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
                            left: containerWidth * 0.423,
                            top: containerHeight * 0.617,
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

                          
                          Positioned(
                            left: containerWidth * 0.411,
                            top: containerHeight * 0.595,
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
                            left: containerWidth * 0.415,
                            top: containerHeight * 0.4875,
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
                                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                            _safetyTip('lib/assets/dropCoverHold.png', 'Drop, Cover, and Hold under a sturdy table or desk.', isLarge: true),
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
                            left: containerWidth * 0.709,
                            top: containerHeight * 0.595,
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

                          Positioned(
                            left: containerWidth * 0.765,
                            top: containerHeight * 0.608,
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
                            left: containerWidth * 0.77,
                            top: containerHeight * 0.64,
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
                                width: containerWidth * 0.037,
                                height: containerHeight * 0.027,
                                child: Image.asset(
                                  'lib/assets/legend_fallingobjects.png',
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
                                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                            _safetyTip('lib/assets/dropCoverHold.png', 'Drop, Cover, and Hold under a sturdy table or desk.', isLarge: true),
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
                            left: containerWidth * 0.744,
                            top: containerHeight * 0.495,
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

                          Positioned(
                            left: containerWidth * 0.765,
                            top: containerHeight * 0.485,
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

                          Positioned(
                            left: containerWidth * 0.695,
                            top: containerHeight * 0.412,
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
                            left: containerWidth * 0.744,
                            top: containerHeight * 0.385,
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

                          Positioned(
                            left: containerWidth * 0.765,
                            top: containerHeight * 0.374,
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
                                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                            _safetyTip('lib/assets/dropCoverHold.png', 'Drop, Cover, and Hold under a sturdy table or desk.', isLarge: true),
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
                            left: containerWidth * 0.732,
                            top: containerHeight * 0.265,
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
                            left: containerWidth * 0.509,
                            top: containerHeight * 0.022,
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
                            left: containerWidth * 0.552,
                            top: containerHeight * 0.037,
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
                                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                            _safetyTip('lib/assets/dropCoverHold.png', 'Drop, Cover, and Hold under a sturdy table or desk.', isLarge: true),
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
                            builder: (context) => const FourthFloorPage()),
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
                            builder: (context) => const SixthFloorPage()),
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
