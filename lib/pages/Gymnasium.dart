import 'package:flutter/material.dart';
import 'package:hazmap/pages/Grounds.dart';
import '../components/NavigationBar.dart'; 
import 'Home.dart'; 
import 'SixthFloor.dart'; 


class GymnasiumPage extends StatelessWidget {
  const GymnasiumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF292746),
        iconTheme: const IconThemeData(color: Colors.white),
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
                                'lib/assets/gymnasiumevacplan.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),

                          // Positioned(
                          //   left: containerWidth *
                          //       0.27, 
                          //   top: containerHeight *
                          //       0.543, 
                          //   child: GestureDetector(
                          //     onTap: () {
                          //       showDialog(
                          //         context: context,
                          //         builder: (BuildContext context) {
                          //           return AlertDialog(
                          //             title: const Text('Pavilion Info'),
                          //             content: const Text(
                          //                 'Details about the Pavilion component.'),
                          //             actions: [
                          //               TextButton(
                          //                 onPressed: () {
                          //                   Navigator.of(context).pop();
                          //                 },
                          //                 child: const Text('Close'),
                          //               ),
                          //             ],
                          //           );
                          //         },
                          //       );
                          //     },
                          //     child: SizedBox(
                          //       width: containerWidth * 0.47,
                          //       height: containerHeight * 0.13,
                          //       child: Image.asset(
                          //         'lib/assets/pavillionbtn.png',
                          //         fit: BoxFit
                          //             .contain, 
                          //       ),
                          //     ),
                          //   ),
                          // ),

                          // Positioned(
                          //   left: containerWidth *
                          //       0.17, 
                          //   top: containerHeight *
                          //       0.136, 
                          //   child: GestureDetector(
                          //     onTap: () {
                          //       showDialog(
                          //         context: context,
                          //         builder: (BuildContext context) {
                          //           return AlertDialog(
                          //             title: const Text('Pavilion Info'),
                          //             content: const Text(
                          //                 'Details about the Pavilion component.'),
                          //             actions: [
                          //               TextButton(
                          //                 onPressed: () {
                          //                   Navigator.of(context).pop();
                          //                 },
                          //                 child: const Text('Close'),
                          //               ),
                          //             ],
                          //           );
                          //         },
                          //       );
                          //     },
                          //     child: SizedBox(
                          //       width: containerWidth * 0.15,
                          //       height: containerHeight * 0.266,
                          //       child: Image.asset(
                          //         'lib/assets/annexbldgbtn.png',
                          //         fit: BoxFit
                          //             .contain, 
                          //       ),
                          //     ),
                          //   ),
                          // ),
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
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) => SixthFloorPage(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: Offset(-1.0, 0.0), // Slide from left
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          );
                        },
                      )
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
                        pageBuilder: (context, animation, secondaryAnimation) => GroundsPage(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: Offset(1.0, 0.0), // Slide from right
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          );
                        },
                      )
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
}
