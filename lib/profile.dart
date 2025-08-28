import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 24),
              decoration: BoxDecoration(
                color: Color(0xFF06306E),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 40),
                  SizedBox(height: 12),
                  Text(
                    'Jenifer Lawrence',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    'UI/UX Designer',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _StatItem(value: "75K", label: "Followers"),
                      _StatItem(value: "16K", label: "Following"),
                      _StatItem(value: "600", label: "Projects"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Folder Section Title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Folder",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF06306E),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View all",
                    style: TextStyle(fontSize: 14, color: Color(0xFF06306E)),
                  ),
                ),
              ],
            ),

            // Folder Cards Scroll Horizontal
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 250,
                    margin: EdgeInsets.only(right: 12),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFDCDCFF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.folder_outlined,
                          color: Color(0xFF06306E),
                          size: 50,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dribble Shots ${index + 1}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF06306E),
                                ),
                              ),
                              const SizedBox(height: 2),
                              const Text(
                                "Created: 28 Feb 2022",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              Row(
                                children: const [
                                  CircleAvatar(
                                    radius: 4,
                                    backgroundColor: Colors.black,
                                  ),
                                  SizedBox(width: 2),
                                  CircleAvatar(
                                    radius: 4,
                                    backgroundColor: Colors.blue,
                                  ),
                                  SizedBox(width: 2),
                                  CircleAvatar(
                                    radius: 4,
                                    backgroundColor: Colors.green,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 5),
            // My Team

            // Team Section Title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "My Team",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF06306E),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "view all",
                    style: TextStyle(fontSize: 14, color: Color(0xFF06306E)),
                  ),
                ),
              ],
            ),

            SizedBox(height: 5),
            // Team Members List
            const _Teamitem(
              icon: Icons.shopping_bag_outlined,
              title: "E-commerce Application",
              subtitle: "Projest in progress",
            ),
            const _Teamitem(
              icon: Icons.fastfood_outlined,
              title: "Food Project",
              subtitle: "Cmpleted",
            ),
            const _Teamitem(
              icon: Icons.book_outlined,
              title: "E-Book project",
              subtitle: "Project in progress",
            ),
          ],
        ),
      ),
    );
  }
}

class _Teamitem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const _Teamitem({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFFDCDCFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Color(0xFF06306E), size: 28),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(subtitle, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;
  const _StatItem({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            label,
            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
