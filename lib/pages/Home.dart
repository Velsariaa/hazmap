import 'package:flutter/material.dart';
import '../components/NavigationBar.dart';
import 'Grounds.dart';
import 'FirstFloor.dart';
import 'SecondFloor.dart';
import 'ThirdFloor.dart';
import 'FourthFloor.dart';
import 'FifthFloor.dart';
import 'SixthFloor.dart';
import 'Gymnasium.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> labels = [
      "Grounds", "1st Floor", "2nd Floor", "3rd Floor", 
      "4th Floor", "5th Floor", "6th Floor", "Gymnasium"
    ];

    final List<Color> boxColors = [
      const Color.fromRGBO(139,69,19, 1),  // Brown
      const Color.fromRGBO(128,0,128, 1),  // Purple
      const Color.fromRGBO(128,0,0, 1),  // Maroon
      const Color.fromRGBO(255,105,180, 1),  // Pink
      const Color.fromRGBO(70,130,180, 1),  // Blue
      const Color.fromRGBO(255,255,102, 1),  // Yellow
      const Color.fromRGBO(34,139,34, 1),  // Green
      const Color.fromRGBO(128,128,128, 1)  // Gray
    ];

    final List<String> images = [
      'lib/assets/grounds.jpg', 'lib/assets/1st_floor.jpg', 'lib/assets/2nd_floor.jpg',
      'lib/assets/3rd_floor.jpg', 'lib/assets/4th_floor.jpg', 'lib/assets/5th_floor.jpg',
      'lib/assets/6th_floor.jpg', 'lib/assets/gymnasium.jpg'
    ];

    final List<Widget> pages = [
      const GroundsPage(),
      const FirstFloorPage(),
      const SecondFloorPage(),
      const ThirdFloorPage(),
      const FourthFloorPage(),
      const FifthFloorPage(),
      const SixthFloorPage(),
      const GymnasiumPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
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
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('lib/assets/mainPageBg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.6),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 3 / 2, // Aspect ratio for rectangular cards
              ),
              itemCount: labels.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => pages[index],
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 6,
                          offset: const Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: boxColors[index].withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            labels[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
