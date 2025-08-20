import 'package:flutter/material.dart';
import 'package:flutter_demo1/pages/about_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              "assets/images/logo.jpg",
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: 32,
            right: 32,
            child: IconButton(
              icon: Icon(Icons.chevron_right, color: const Color.fromARGB(255, 6, 2, 85), size: 30),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(pageBuilder: (_, __, ___) => AboutPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 199, 199, 199)),
                shape: WidgetStatePropertyAll(CircleBorder()),
                padding: WidgetStatePropertyAll(EdgeInsets.all(6)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
