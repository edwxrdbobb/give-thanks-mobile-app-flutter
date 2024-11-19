import 'package:flutter/material.dart';

class AffirmationsScreen extends StatelessWidget {
  const AffirmationsScreen({Key? key}) : super(key: key);

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
                  'Affirmations',
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
                      _buildFilterChip('Todays'),
                      _buildFilterChip('Categories'),
                      _buildFilterChip('All Affirmation'),
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
                _buildAffirmationCard(
                  'Give Thanks',
                  'For God so love the world that he gave his only begotten son',
                  'Newcastle Utd',
                  20,
                ),
                _buildAffirmationCard(
                  'Prayer',
                  'The Lord is my shepherd, I shall not want',
                  'Winners Chapel',
                  20,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Navigate to create new affirmation screen
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Chip(
        label: Text(label),
        backgroundColor: label == 'Todays' ? Colors.blue[100] : Colors.white,
        labelStyle: TextStyle(color: label == 'Todays' ? Colors.blue : Colors.black87),
      ),
    );
  }

  Widget _buildAffirmationCard(String category, String affirmation, String tag, int points) {
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
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(category, style: const TextStyle(color: Colors.blue)),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 16),
                      const SizedBox(width: 4),
                      Text('$points', style: const TextStyle(color: Colors.black87)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(affirmation, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.play_arrow),
                Expanded(
                  child: Container(
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: const LinearProgressIndicator(
                      value: 0.5,
                      backgroundColor: Colors.transparent,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
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
                  child: Text(tag, style: const TextStyle(color: Colors.blue)),
                ),
                TextButton.icon(
                  onPressed: () {
                    // TODO: Implement reaffirm functionality
                  },
                  icon: const Icon(Icons.mic, color: Colors.blue),
                  label: const Text('Reaffirm', style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}