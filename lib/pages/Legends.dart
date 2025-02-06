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
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/legendbg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.7,
              color: const Color.fromARGB(255, 204, 204, 204).withOpacity(0.27),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: List.generate(6, (index) {
                          String imagePath;
                          String title;
                          String description;

                          switch (index) {
                            case 1:
                              imagePath = 'lib/assets/brokenhazard.png';
                              title = 'Broken';
                              description = 'This is Broken Hazard.';
                              break;
                            case 2:
                              imagePath = 'lib/assets/brokenhazard.png';
                              title = 'Flood';
                              description = 'This is Flood Hazard.';
                              break;
                            case 3:
                              imagePath = 'lib/assets/brokenhazard.png';
                              title = 'Fire';
                              description = 'This is Fire Hazard.';
                              break;
                            case 4:
                              imagePath = 'lib/assets/brokenhazard.png';
                              title = 'Landslide';
                              description = 'This is Landslide Hazard.';
                              break;
                            case 5:
                              imagePath = 'lib/assets/brokenhazard.png';
                              title = 'Tsunami';
                              description = 'This is Tsunami Hazard.';
                              break;
                            default:
                              imagePath = 'lib/assets/earthquakehazard.png';
                              title = 'Earthquake';
                              description = 'This is a description of the earthquake hazard.';
                          }

                          return Container(
                            color: Colors.white.withOpacity(0.8),
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 100 * 0.61,
                                      height: 100 * 0.61,
                                      child: Image.asset(imagePath),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Transform.translate(
                                        offset: const Offset(-17, 0),
                                        child: Text(
                                          title,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  description,
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
