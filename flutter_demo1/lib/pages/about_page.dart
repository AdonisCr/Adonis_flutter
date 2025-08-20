import 'package:flutter/material.dart';
import 'package:flutter_demo1/pages/login_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icône retour en haut
          Padding(
            padding: EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: const Color.fromARGB(178, 168, 168, 168),
                    size: 24,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/un.jpg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(24),
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Endless option",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 13, 8, 58),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 12),
                  Text(
                    "choose of hundred of modelsyou wan't find anyways else.pickit upor get it delevered were you want it.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 13, 8, 58),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  // SizedBox(height: 18),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom:12),
                        child:Text(
                        " . . .",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 23, 17, 68),
                          letterSpacing: -2,
                        ),
                      ),
                        ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                color: Color.fromARGB(255, 13, 8, 58),
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SecondAboutPage()),
                              );
                            },
                            child: Text("Next"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class SecondAboutPage extends StatelessWidget {
  const SecondAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icône retour en haut
          Padding(
            padding: EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: const Color.fromARGB(178, 168, 168, 168),
                    size: 24,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/deux.jpg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(24),
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Drive confidently",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 13, 8, 58),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Drive Confidently with our top-notch vehicles, ensuring safety and comfort on every journey.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 13, 8, 58),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  // SizedBox(height: 18),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom:12),
                        child:Text(
                        " . . .",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 23, 17, 68),
                          letterSpacing: -2,
                        ),
                      ),
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                color: Color.fromARGB(255, 13, 8, 58),
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ThirdAboutPage()),
                              );
                            },
                            child: Text("Next"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ThirdAboutPage extends StatelessWidget {
  const ThirdAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: const Color.fromARGB(178, 168, 168, 168),
                    size: 24,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/trois.jpg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(24),
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "24/7 Support",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 13, 8, 58),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Rest easy knowing Experience comfort and style with our premium selection. Your journey starts here!",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 13, 8, 58),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom:12),
                        child:Text(
                        " . . .",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 23, 17, 68),
                          letterSpacing: -2,
                        ),
                      ),
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                color: Color.fromARGB(255, 13, 8, 58),
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginPage()),
                              );
                            },
                            child: Text("Next"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

