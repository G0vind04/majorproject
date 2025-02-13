import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(color: Colors.blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          const SizedBox(height: 10),
          const Text(
            'John Doe',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          const Text(
            'johndoe@example.com',
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}