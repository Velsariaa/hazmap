import 'package:flutter/material.dart';
import '../components/NavigationBar.dart';

class LegendsPage extends StatelessWidget {
  const LegendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Legends Page'),
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/legendbg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.height * 0.95,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 226, 226, 226).withOpacity(0.27),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Legends',
                        style: TextStyle(
                          fontSize: 34,
                          color: Colors.red,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 20),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 0.85, // Adjust this for better layout
                            ),
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              String imagePath;
                              String title;
                              String description;

                              switch (index) {
                                case 1:
                                  imagePath = 'lib/assets/brokenhazard.png';
                                  title = 'Broken';
                                  description = 'Broken items can lead to sharp edges, spills, or other hazards depending on the nature of the object. \nEx: shattered glass, broken tools, or fractured furniture';
                                  break;
                                case 2:
                                  imagePath = 'lib/assets/brokenhazard.png';
                                  title = 'Laboratory Apparatus';
                                  description = 'Laboratory equipment can pose serious risks if damaged or mishandled, such as chemical exposure or burns. \nEx: broken glassware, faulty instruments, cracked beakers';
                                  break;
                                case 3:
                                  imagePath = 'lib/assets/brokenhazard.png';
                                  title = 'Falling Objects';
                                  description = 'Falling objects can lead to serious injury or death if not properly secured. Flammable materials can catch fire easily and spread quickly, causing serious damage or injury. \nEx: gasoline, solvents, and paper products';
                                  break;
                                case 5:
                                  imagePath = 'lib/assets/brokenhazard.png';
                                  title = 'Exposed Electrical Wirings';
                                  description = 'Exposed wiring presents a significant risk of electric shock, fires, or electrocution if touched or damaged. \nEx: frayed wires, faulty connections';
                                  break;
                                default:
                                  imagePath = 'lib/assets/earthquakehazard.png';
                                  title = 'Earthquake';
                                  description =
                                      'Earthquakes cause the ground to shake, potentially leading to building collapses, landslides, and infrastructure damage. \nEx: cracks in walls or floors and the shifting of heavy objects.';
                              }

                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            width: 60,
                                            height: 60,
                                            child: Image.asset(imagePath),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: Text(
                                            title,
                                            style: const TextStyle(
                                              fontSize: 15.5,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Expanded(
                                      child: Text(
                                        description,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
