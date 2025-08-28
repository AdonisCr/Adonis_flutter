import 'package:flutter/material.dart';
import 'profile.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 248, 248),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF06306E),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: const Color.fromARGB(255, 152, 162, 167),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 20,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: "My Task"),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: "Payment"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF06306E),
        shape: const CircleBorder(), // bouton flottant arrondi
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _bodynav(),
    );
  }

  Widget _bodynav() {
    switch (_selectedIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const Center(child: Text('My Task'));
      case 2:
        return const Center(child: Text('Payment'));
      case 3:
        return const ProfilePage();
      default:
        return const SizedBox.shrink();
    }
  }
}
