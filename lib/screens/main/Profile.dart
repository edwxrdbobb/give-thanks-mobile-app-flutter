import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // TODO: Implement drawer or side menu
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.white),
            onPressed: () {
              // TODO: Implement notifications
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'My Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Gratitude is contagious',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage('https://via.placeholder.com/100'),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Maada G. Mansaray',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          '@Maamans',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            // TODO: Implement edit profile functionality
                          },
                          child: const Text('Edit My Profile'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                _buildProfileSection('My Affirmations', Icons.mic),
                _buildProfileSection('My Groups', Icons.group),
                _buildProfileSection('My Mentors', Icons.person),
                _buildProfileSection('Settings', Icons.settings),
                _buildProfileSection('Help', Icons.help),
                _buildProfileSection('Logout', Icons.exit_to_app),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileSection(String title, IconData icon) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // TODO: Implement navigation to respective sections
        },
      ),
    );
  }
}