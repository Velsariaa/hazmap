import 'package:flutter/material.dart';
import '../components/NavigationBar.dart';
import 'Home.dart'; 
import 'ThirdFloor.dart'; 
import 'FifthFloor.dart'; 


class FourthFloorPage extends StatelessWidget {
  const FourthFloorPage({super.key});

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
                                'lib/assets/4thfloorevacplan.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          // Electrical Room
                          Positioned(
                            left: containerWidth * 0.384,
                            top: containerHeight * 0.898,
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Row(
                                        children: [
                                          Image.asset(
                                            'lib/assets/flammableLeg.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            'Flammable',
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
                                                    text: 'Flammable',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' hazards refer to materials or substances that can easily ignite and catch fire when exposed to heat, flame, or sparks. These hazards include both solid, liquid, and gaseous substances that have a low flash point.',
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
                                                    text: ' Improper Storage of Flammable Materials, Uncontrolled Use of Fire or Heat Sources, Paper and Cardboard Piles',
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
                                            _safetyTip('lib/assets/flammable1.png', 'Place warning signs near flammable materials to alert students and staff.'),
                                            _safetyTip('lib/assets/flammable2.png', 'Ensure fire extinguishers are accessible, properly maintained, and students know how to use them.'),
                                            _safetyTip('lib/assets/flammable3.png', 'Maintain good airflow in areas where flammable substances are used to prevent vapor buildup.'),
                                            _safetyTip('lib/assets/flammable4.png', 'Equip the school with burn kits and train personnel in basic first aid for fire-related injuries.'),
                                            _safetyTip('lib/assets/flammable5.png', 'Prohibit open flames or sparks near flammable materials, especially in laboratories.'),
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
                                  'lib/assets/legend_flammable.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          //Gen sci lab
                          Positioned(
                            left: containerWidth * 0.384,
                            top: containerHeight * 0.792,
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Row(
                                        children: [
                                          Image.asset(
                                            'lib/assets/labLeg.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            'Laboratory Equipment',
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
                                                    text: 'Laboratory apparatus',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' with sharp edges or volatile materials increases the risk of physical injury or accidents. Improper use or failure to maintain equipment may lead to chemical exposure, electrical shocks, or fire. ',
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
                                                    text: ' Broken glassware, and chemicals.',
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
                                            _safetyTip('lib/assets/lab1.png', 'Leave the area exposed to chemicals and move to somewhere with fresh air.'),
                                            _safetyTip('lib/assets/lab2.png', 'Once outside, close the door to prevent the spread of the chemical.'),
                                            _safetyTip('lib/assets/lab3.png', 'Wash the exposed skin with clean running water for at least 15 minutes.'),
                                            _safetyTip('lib/assets/lab4.png', 'If you get a glass splinter, carefully remove it, clean the wound with water, apply pressure with a bandage'),
                                            _safetyTip('lib/assets/lab5.png', 'Seek medical attention for serious chemical exposure or injuries.'),
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
                                  'lib/assets/legend_labApparatus.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          //Physics Lab
                          Positioned(
                            left: containerWidth * 0.384,
                            top: containerHeight * 0.652,
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Row(
                                        children: [
                                          Image.asset(
                                            'lib/assets/labLeg.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            'Laboratory Equipment',
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
                                                    text: 'Laboratory apparatus',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' with sharp edges or volatile materials increases the risk of physical injury or accidents. Improper use or failure to maintain equipment may lead to chemical exposure, electrical shocks, or fire. ',
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
                                                    text: ' Broken glassware, and chemicals.',
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
                                            _safetyTip('lib/assets/lab1.png', 'Leave the area exposed to chemicals and move to somewhere with fresh air.'),
                                            _safetyTip('lib/assets/lab2.png', 'Once outside, close the door to prevent the spread of the chemical.'),
                                            _safetyTip('lib/assets/lab3.png', 'Wash the exposed skin with clean running water for at least 15 minutes.'),
                                            _safetyTip('lib/assets/lab4.png', 'If you get a glass splinter, carefully remove it, clean the wound with water, apply pressure with a bandage'),
                                            _safetyTip('lib/assets/lab5.png', 'Seek medical attention for serious chemical exposure or injuries.'),
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
                                  'lib/assets/legend_labApparatus.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          //Chem Lab
                          Positioned(
                            left: containerWidth * 0.384,
                            top: containerHeight * 0.512,
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Row(
                                        children: [
                                          Image.asset(
                                            'lib/assets/labLeg.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            'Laboratory Equipment',
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
                                                    text: 'Laboratory apparatus',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' with sharp edges or volatile materials increases the risk of physical injury or accidents. Improper use or failure to maintain equipment may lead to chemical exposure, electrical shocks, or fire. ',
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
                                                    text: ' Broken glassware, and chemicals.',
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
                                            _safetyTip('lib/assets/lab1.png', 'Leave the area exposed to chemicals and move to somewhere with fresh air.'),
                                            _safetyTip('lib/assets/lab2.png', 'Once outside, close the door to prevent the spread of the chemical.'),
                                            _safetyTip('lib/assets/lab3.png', 'Wash the exposed skin with clean running water for at least 15 minutes.'),
                                            _safetyTip('lib/assets/lab4.png', 'If you get a glass splinter, carefully remove it, clean the wound with water, apply pressure with a bandage'),
                                            _safetyTip('lib/assets/lab5.png', 'Seek medical attention for serious chemical exposure or injuries.'),
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
                                  'lib/assets/legend_labApparatus.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          // BIO LAB
                          Positioned(
                            left: containerWidth * 0.384,
                            top: containerHeight * 0.372,
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Row(
                                        children: [
                                          Image.asset(
                                            'lib/assets/labLeg.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            'Laboratory Equipment',
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
                                                    text: 'Laboratory apparatus',
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' with sharp edges or volatile materials increases the risk of physical injury or accidents. Improper use or failure to maintain equipment may lead to chemical exposure, electrical shocks, or fire. ',
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
                                                    text: ' Broken glassware, and chemicals.',
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
                                            _safetyTip('lib/assets/lab1.png', 'Leave the area exposed to chemicals and move to somewhere with fresh air.'),
                                            _safetyTip('lib/assets/lab2.png', 'Once outside, close the door to prevent the spread of the chemical.'),
                                            _safetyTip('lib/assets/lab3.png', 'Wash the exposed skin with clean running water for at least 15 minutes.'),
                                            _safetyTip('lib/assets/lab4.png', 'If you get a glass splinter, carefully remove it, clean the wound with water, apply pressure with a bandage'),
                                            _safetyTip('lib/assets/lab5.png', 'Seek medical attention for serious chemical exposure or injuries.'),
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
                                  'lib/assets/legend_labApparatus.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          // Room 403
                          Positioned(
                            left: containerWidth * 0.527,
                            top: containerHeight * 0.088,
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
                            left: containerWidth * 0.527,
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
                          //Room 409
                          Positioned(
                            left: containerWidth * 0.778,
                            top: containerHeight * 0.774,
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
                            left: containerWidth * 0.743,
                            top: containerHeight * 0.724,
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
                          //Room 411
                          Positioned(
                            left: containerWidth * 0.743,
                            top: containerHeight * 0.554,
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
                            left: containerWidth * 0.775,
                            top: containerHeight * 0.520,
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

                          //Room 401
                           Positioned(
                            left: containerWidth * 0.652,
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
                            left: containerWidth * 0.612,
                            top: containerHeight * 0.032,
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
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500),
                        pageBuilder: (context, animation, secondaryAnimation) => const ThirdFloorPage(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(width: 50),
                IconButton(
                  icon: const Icon(Icons.arrow_right, size: 40),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500),
                        pageBuilder: (context, animation, secondaryAnimation) => const FifthFloorPage(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ),
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
