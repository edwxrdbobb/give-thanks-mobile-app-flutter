import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

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
              children: [
                const Text(
                  'Mentors',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Gratitude is contagious',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildCategoryChip('Sports'),
                      _buildCategoryChip('Work'),
                      _buildCategoryChip('Life'),
                      _buildCategoryChip('Education'),
                      _buildCategoryChip('Prayer'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildMentorCard('Robert Fotofili', '@robert', 'Newcastle Utd', 20),
                _buildMentorCard('Maada G. Mansaray', '@Maamans', 'Worship', 20),
                _buildMentorCard('Joseph David Koroma', '@joseph', 'Newcastle Utd', 20),
                _buildMentorCard('Maada G. Mansaray', '@Maamans', 'Worship', 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.white,
        labelStyle: const TextStyle(color: Colors.blue),
      ),
    );
  }

  Widget _buildMentorCard(String name, String username, String category, int affirmations) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://via.placeholder.com/40'),
              radius: 30,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(username, style: const TextStyle(color: Colors.grey)),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(category, style: const TextStyle(color: Colors.blue)),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text('$affirmations Affirmations', style: const TextStyle(color: Colors.black87)),
                      ),
                    ],
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