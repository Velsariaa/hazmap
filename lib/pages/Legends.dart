import 'package:flutter/material.dart';
import '../components/NavigationBar.dart';

class LegendsPage extends StatelessWidget {
  const LegendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF292746),
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
        child: Align(
          alignment: Alignment.topCenter, // Align to the top center
          child: AspectRatio(
            aspectRatio: 9 / 17, // Ensures the container maintains a 9:16 ratio
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 226, 226, 226).withOpacity(0.27),
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
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return GridView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.68,
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
                                description =
                                    'Broken items can lead to sharp edges, spills, or other hazards depending on the nature of the object.\nEx: shattered glass, broken tools, or fractured furniture';
                                break;
                              case 2:
                                imagePath = 'lib/assets/brokenhazard.png';
                                title = 'Laboratory Apparatus';
                                description =
                                    'Laboratory equipment can pose serious risks if damaged or mishandled, such as chemical exposure or burns.\nEx: broken glassware, faulty instruments, cracked beakers';
                                break;
                              case 3:
                                imagePath = 'lib/assets/brokenhazard.png';
                                title = 'Falling Objects';
                                description =
                                    'Falling objects can lead to serious injury or death if not properly secured.\nEx: gasoline, solvents, and paper products';
                                break;
                              case 5:
                                imagePath = 'lib/assets/brokenhazard.png';
                                title = 'Exposed Electrical Wirings';
                                description =
                                    'Exposed wiring presents a significant risk of electric shock, fires, or electrocution if touched or damaged.\nEx: frayed wires, faulty connections';
                                break;
                              default:
                                imagePath = 'lib/assets/earthquakehazard.png';
                                title = 'Earthquake';
                                description =
                                    'Earthquakes cause the ground to shake, potentially leading to building collapses, landslides, and infrastructure damage.\nEx: cracks in walls or floors and the shifting of heavy objects.';
                            }

                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(0),
                                        child: SizedBox(
                                          width: 60,
                                          height: 60,
                                          child: Image.asset(imagePath),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: Transform.translate(
                                          offset: const Offset(-12,
                                              0), // Move text 20 pixels to the left
                                          child: Text(
                                            title,
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
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
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
