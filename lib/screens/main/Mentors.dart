import 'package:flutter/material.dart';

class MentorScreen extends StatelessWidget {
  const MentorScreen({Key? key}) : super(key: key);

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
                  'Mentor',
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
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[100],
                      foregroundColor: Colors.blue,
                    ),
                    child: const Text('Explore'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('My Mentor'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildGroupCard(
                  'Give Thanks',
                  'Private Group • 12 members • 500 affirmations',
                  'Faith',
                  10,
                ),
                _buildGroupCard(
                  'Give Thanks',
                  'Private Group • 12 members • 500 affirmations',
                  'Sports',
                  10,
                ),
                _buildGroupCard(
                  'Give Thanks',
                  'Private Group • 12 members • 500 affirmations',
                  'Sports',
                  10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGroupCard(String name, String details, String category, int points) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.star, color: Colors.white, size: 16),
                      const SizedBox(width: 4),
                      Text('$points', style: const TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(details, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(category, style: const TextStyle(color: Colors.blue)),
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement join group functionality
                  },
                  child: const Text('Join Group'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}