import 'package:flutter/material.dart';
import '../components/NavigationBar.dart'; 

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF292746),
        iconTheme: const IconThemeData(color: Colors.white), // Set menu icon to white
        title: Center(
          child: Transform.translate(
            offset: Offset(-35, 0), // Moves the image 10 pixels to the left
            child: Image.asset(
              'lib/assets/hazHeader.png',
              height: 40,
            ),
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/legendbg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 226, 226, 226).withOpacity(0.27),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset('lib/assets/abtpagetext.png'),
                  ),
                  const SizedBox(height: 20), // Added spacing
                  Align(
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6E6E6),
                        borderRadius: BorderRadius.circular(8), // Added border radius
                      ),
                      child: const Center(
                        child: Text(
                          'HazMap is a hazard mapping application that is intended to provide Pasig City Science High School (PCSHS) students with a virtual map directory of hazards within the school campus. The app offers valuable benefits by providing them with quick access to up-to-date disaster preparedness information to contribute to a safer school environment.',
                          style: TextStyle(
                            fontSize: 18, // Reduced font size for better readability
                            color: Color(0xFF292746),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
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