import 'package:flutter/material.dart';
import 'package:audio_waveforms/audio_waveforms.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedFilter = 'Recent';
  final List<String> filters = ['Recent', 'My Contacts', 'My Groups', 'My Mentors'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            // TODO: Implement menu
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
            onPressed: () {
              // TODO: Implement notifications
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filters.length,
              itemBuilder: (context, index) {
                final filter = filters[index];
                final isSelected = filter == selectedFilter;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: FilterChip(
                    label: Text(filter),
                    selected: isSelected,
                    onSelected: (bool selected) {
                      setState(() {
                        selectedFilter = filter;
                      });
                    },
                    backgroundColor: isSelected ? Colors.blue : Colors.blue[100],
                    labelStyle: TextStyle(
                      color: isSelected ? Colors.white : Colors.blue,
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: 10, // Replace with actual data length
              itemBuilder: (context, index) {
                return _buildAffirmationCard();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAffirmationCard() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage('https://via.placeholder.com/40'),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Maada G. Mansaray',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '@Maamans',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.star, color: Colors.white, size: 16),
                      SizedBox(width: 4),
                      Text(
                        '10',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Row(
                    children: [
                      const Text(
                        '30k',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 4),
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              'Gratitude is spontaneous',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 64,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.play_arrow),
                    onPressed: () {
                      // TODO: Implement audio playback
                    },
                  ),
                  Expanded(
                    child: AudioFileWaveforms(
                      size: Size(MediaQuery.of(context).size.width - 100, 64),
                      playerController: PlayerController(),
                      enableSeekGesture: true,
                      waveformType: WaveformType.fitWidth,
                      playerWaveStyle: const PlayerWaveStyle(
                        fixedWaveColor: Colors.grey,
                        liveWaveColor: Colors.blue,
                        spacing: 6,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Text(
                    'Newcastle Utd',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Text(
                    'Sports',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: () {
                    // TODO: Implement reaffirm functionality
                  },
                  icon: const Icon(Icons.mic, size: 18),
                  label: const Text('Reaffirm'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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