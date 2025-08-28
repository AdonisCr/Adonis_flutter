import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.apps, size: 28, color: Color(0xFF06306E)),
                Text(
                  'Home',
                  style: TextStyle(
                    color: Color(0xFF06306E),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Icon(Icons.notifications, size: 28, color: Color(0xFF06306E)),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi Jenifer!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xFF06306E),
                    ),
                  ),
                  Text(
                    'Good Morning',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 206, 206, 206),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Color(0xFF283593)),
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF06306E), width: 3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome!',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Color(0xFF06306E),
                                ),
                              ),
                              Text('Let’s schedule your projects'),
                            ],
                          ),
                        ),
                        SizedBox(width: 1),
                        // Remplace l'icône par une image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Transform.scale(
                            scale: 1.4, // Ajuste la valeur pour zoomer plus ou moins
                            child: Image.asset(
                              'assets/images/img.jpg',
                              width: 120,
                              height: 120,
                              fit: BoxFit.cover,
                              alignment: Alignment.center, // centre l'image
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ongoing Projects',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Color(0xFF06306E),
                        ),
                      ),
                      TextButton(onPressed: () {}, child: Text('view all')),
                    ],
                  ),
                  SizedBox(height: 10),
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1.2,
                    children: [
                      _projectCard(
                        title: 'Mobile App',
                        subtitle: 'E-Commerce',
                        progress: 0.5,
                        color: Color(0xFF06306E),
                        textColor: Colors.white,
                      ),
                      _projectCard(
                        title: 'Dashboard',
                        subtitle: 'Hotel',
                        progress: 0.8,
                        textColor: Color(0xFF06306E),
                      ),
                      _projectCard(
                        title: 'Banner',
                        subtitle: 'Marketing',
                        progress: 0.4,
                      ),
                      _projectCard(
                        title: 'UI/UX',
                        subtitle: 'Task Manager',
                        progress: 0.6,
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

  Widget _projectCard({
    required String title,
    required String subtitle,
    required double progress,
    Color? color,
    Color? textColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? Color(0xFFDCDCFF),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'May 30, 2022',
            style: TextStyle(
              color: textColor ?? Color(0xFF06306E),
              fontSize: 12,
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: textColor ?? Color(0xFF06306E),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(color: textColor ?? Colors.black54, fontSize: 14),
          ),
          const Spacer(),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.white,
            color: textColor != null ? Colors.white : Color(0xFF06306E),
          ),
        ],
      ),
    );
  }
}
