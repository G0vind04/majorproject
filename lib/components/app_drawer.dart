import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/find_matches_page.dart';
import '../pages/join_events_page.dart';
import '../pages/connect_players_page.dart';
import '../pages/leaderboard_page.dart';
import '../pages/profile_page.dart';
import '../pages/login_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const ProfileHeader(),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.search),
            title: const Text('Find Matches'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FindMatchesPage()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.event),
            title: const Text('Join Events'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const JoinEventsPage()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text('Connect with Players'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ConnectPlayersPage()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.leaderboard),
            title: const Text('Leaderboard'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LeaderboardPage()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            ),
          ),
        ],
      ),
    );
  }
}
