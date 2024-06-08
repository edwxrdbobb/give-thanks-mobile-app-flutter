import 'package:flutter/material.dart';
import 'package:give_thanks/screens/allafirm.dart';
import 'package:give_thanks/screens/todaff.dart';

class ViewCommunity extends StatefulWidget {
  const ViewCommunity({super.key});

  @override
  State<ViewCommunity> createState() => _ViewCommunityState();
}

class _ViewCommunityState extends State<ViewCommunity> {

   int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'Images/worship.jpeg', // Add your image asset here
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 150,
                  left: 20,
                  child: Text(
                    'Give Thanks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.lock, size: 16),
                  SizedBox(width: 4),
                  Text('Private Group'),
                  SizedBox(width: 8),
                  Text('•'),
                  SizedBox(width: 8),
                  Text('12 members'),
                  SizedBox(width: 8),
                  Text('•'),
                  SizedBox(width: 8),
                  Text('500 Affirmations'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Row(
                    children: List.generate(
                      7,
                      (index) => Container(
                        margin: EdgeInsets.only(right: 4),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/member.png'), // Add member image asset here
                          radius: 16,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Chip(
                        label: Text('Faith'),
                        backgroundColor: Colors.purple,
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 8),
                      Chip(
                        label: Text('120'),
                        backgroundColor: Colors.yellow,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(500, 60), // Specify width and height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Join Group',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TodaysAffirmation()),
                    );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(
                          color: Color.fromARGB(
                              255, 207, 216, 248)), // Blue border
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    child: Text(
                      'Todays Affirmations',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  TextButton(
                    onPressed: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AllAffirmations()),
                    );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 207, 216, 248),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    child: Text(
                      'All Affirmations',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // The new card with specified contents
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                color: Color.fromARGB(255, 207, 216, 248),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'For God so love the world that he gave his only begotten son',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: LinearProgressIndicator(
                              value:
                                  0.6, // Example value, should be dynamically updated
                              backgroundColor: Colors.grey[300],
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.play_arrow),
                            onPressed: () {
                              // Handle play button press
                            },
                          ),
                          Text(
                              '0:30'), // Example duration, should be dynamically updated
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              'Affirmation',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.white),
                                SizedBox(width: 4),
                                Text(
                                  '100',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.mic, color: Colors.blue),
                                SizedBox(width: 4),
                                Text(
                                  'Reaffirm',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedIndex,
  selectedItemColor: Colors.blue,
  unselectedItemColor: Colors.black,
  onTap: _onItemTapped,
  items: [
    BottomNavigationBarItem(
      icon: CircleAvatar(
        radius: 15,
        backgroundImage: AssetImage('images/avatar.png'),
      ),
      label: 'Avatar',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.mic),
      label: 'Mic',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.people),
      label: 'People',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.menu),
      label: 'Menu',
    ),
  ],
),

    );
    
  }
}

void main() {
  runApp(MaterialApp(
    home: ViewCommunity(),
  ));
}
