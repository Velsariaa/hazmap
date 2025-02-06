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
                          if (index == 1) {
                            return Container(
                              color: Colors.white.withOpacity(0),
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 100 * 0.7,
                                        height: 100 * 0.7,
                                        child: Image.asset(
                                          'lib/assets/brokenhazard.png',
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: Transform.translate(
                                          offset: const Offset(-17,
                                              0), 
                                          child: const Text(
                                            'Broken',
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'This is Broken Hazard.',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            );
                          } else if (index == 2) {
                            return Container(
                              color: Colors.white.withOpacity(0),
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 50 * 0.3,
                                        height: 50 * 0.3,
                                        child: Image.asset(
                                          'lib/assets/brokenhazard.png',
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Expanded(
                                        child: Text(
                                          'Flood',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'This is Flood Hazard.',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            );
                          } else if (index == 3) {
                            return Container(
                              color: Colors.white.withOpacity(0),
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 50 * 0.3,
                                        height: 50 * 0.3,
                                        child: Image.asset(
                                          'lib/assets/brokenhazard.png',
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Expanded(
                                        child: Text(
                                          'Fire',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'This is Fire Hazard.',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            );
                          } else if (index == 4) {
                            return Container(
                              color: Colors.white.withOpacity(0),
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 50 * 0.3,
                                        height: 50 * 0.3,
                                        child: Image.asset(
                                          'lib/assets/brokenhazard.png',
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Expanded(
                                        child: Text(
                                          'Landslide',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'This is Landslide Hazard.',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            );
                          } else if (index == 5) {
                            return Container(
                              color: Colors.white.withOpacity(0),
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 50 * 0.3,
                                        height: 50 * 0.3,
                                        child: Image.asset(
                                          'lib/assets/brokenhazard.png',
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Expanded(
                                        child: Text(
                                          'Tsunami',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'This is Tsunami Hazard.',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            );
                          } else {
                            return Container(
                              color: Colors.white.withOpacity(0),
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 50 * 0.3,
                                        height: 50 * 0.3,
                                        child: Image.asset(
                                          'lib/assets/earthquakehazard.png',
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Expanded(
                                        child: Text(
                                          'Earthquake',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'This is a description of the earthquake hazard.',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            );
                          }
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
