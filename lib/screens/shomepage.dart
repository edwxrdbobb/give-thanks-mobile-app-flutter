import 'package:flutter/material.dart';
import 'package:give_thanks/screens/comm.dart';

class SecondLandingPage extends StatefulWidget {
  const SecondLandingPage({super.key});

  @override
  State<SecondLandingPage> createState() => _SecondLandingPageState();
}

class _SecondLandingPageState extends State<SecondLandingPage> {

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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // First sub-row with Circular Avatar and Hello Joseph text
                  const Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                            'images/logo2.png'), // replace with your image asset
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Hello Joseph',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // Second sub-row with Icon, Text and Notifications Bar
                  Row(
                    children: [
                      const Icon(
                        Icons.star, // replace with your desired icon
                        color: Colors.amber,
                        size: 30,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '258',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Stack(
                        children: [
                          const Icon(
                            Icons.notifications,
                            size: 30,
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              constraints: const BoxConstraints(
                                minWidth: 12,
                                minHeight: 12,
                              ),
                              child: const Text(
                                '5', // replace with dynamic value as needed
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20), // Add some space below the first row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 210, // Specify width
                    height: 50, // Specify height
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue, // Blue background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Border radius
                        ),
                      ),
                      onPressed: () {
                        // Handle button press
                      },
                      child: const Text(
                        'Explore',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold), // White text color
                      ),
                    ),
                  ),
                  const SizedBox(width: 10), // Add space between the buttons
                  SizedBox(
                    width: 210, // Specify width
                    height: 50, // Specify height
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                            255, 207, 216, 248), // RGB background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Border radius
                        ),
                      ),
                      onPressed: () {
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ViewCommunity()),
                    );
                      },
                      child: const Text(
                        'My Community',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold), // Blue text color
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Add some space below the buttons
              Card(
                color: const Color.fromARGB(255, 207, 216,
                    248), // Background color of the second button
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage(
                                    'images/logo2.png'), // replace with your image asset
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Maada Gbagie Mansaray',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '@Maamans',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                         
                          
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(28), // Border radius
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '100',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        
                      ),
                      
                      
                              const SizedBox(height: 10), // Space between items
                              const Row(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 16,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Loved',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20), // Add some space below the main row
const Row(
  children: [
    Text(
      'Gratitude is spontaneous',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  ],
),
const SizedBox(height: 8),
Row(
  children: [
    Expanded(
      child: LinearProgressIndicator(
        value: 0.6, // Example value, should be dynamically updated
        backgroundColor: Colors.grey[300],
        valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
      ),
    ),
  ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    IconButton(
      icon: const Icon(Icons.play_arrow),
      onPressed: () {
        // Handle play button press
      },
    ),
    const Text('0:30'), // Example duration, should be dynamically updated
  ],
),
const SizedBox(height: 10),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 208, 252,253),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        'Container 1',
        style: TextStyle(color: Colors.blue),
      ),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 76, 47,168),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        'Container 2',
        style: TextStyle(color: Color.fromARGB(255, 205, 103,149)),
      ),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black54),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        children: [
          Icon(Icons.mic),
          SizedBox(width: 5),
          Text('Container 3'),
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      child: const Icon(Icons.share, color: Colors.blue),
    ),
  ],
),


                    ],
                  ),
                  
                ),
              ),
              const SizedBox(height: 20), // Add some space below the buttons
              Card(
                color: const Color.fromARGB(255, 207, 216,
                    248), // Background color of the second button
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage(
                                    'images/logo2.png'), // replace with your image asset
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Maada Gbagie Mansaray',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '@Maamans',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                         
                          
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(28), // Border radius
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '100',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        
                      ),
                      
                      
                              const SizedBox(height: 10), // Space between items
                              const Row(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 16,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Loved',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20), // Add some space below the main row
const Row(
  children: [
    Text(
      'Gratitude is spontaneous',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  ],
),
const SizedBox(height: 8),
Row(
  children: [
    Expanded(
      child: LinearProgressIndicator(
        value: 0.6, // Example value, should be dynamically updated
        backgroundColor: Colors.grey[300],
        valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
      ),
    ),
  ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    IconButton(
      icon: const Icon(Icons.play_arrow),
      onPressed: () {
        // Handle play button press
      },
    ),
    const Text('0:30'), // Example duration, should be dynamically updated
  ],
),
const SizedBox(height: 10),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 208, 252,253),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        'Container 1',
        style: TextStyle(color: Colors.blue),
      ),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 76, 47,168),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        'Container 2',
        style: TextStyle(color: Color.fromARGB(255, 205, 103,149)),
      ),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black54),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        children: [
          Icon(Icons.mic),
          SizedBox(width: 5),
          Text('Container 3'),
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      child: const Icon(Icons.share, color: Colors.blue),
    ),
  ],
),


                    ],
                  ),
                  
                ),
              ),
              const SizedBox(height: 20), // Add some space below the buttons
              Card(
                color: const Color.fromARGB(255, 207, 216,
                    248), // Background color of the second button
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage(
                                    'images/logo2.png'), // replace with your image asset
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Maada Gbagie Mansaray',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '@Maamans',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                         
                          
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(28), // Border radius
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '100',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        
                      ),
                      
                      
                              const SizedBox(height: 10), // Space between items
                              const Row(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 16,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Loved',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20), // Add some space below the main row
const Row(
  children: [
    Text(
      'Gratitude is spontaneous',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  ],
),
const SizedBox(height: 8),
Row(
  children: [
    Expanded(
      child: LinearProgressIndicator(
        value: 0.6, // Example value, should be dynamically updated
        backgroundColor: Colors.grey[300],
        valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
      ),
    ),
  ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    IconButton(
      icon: const Icon(Icons.play_arrow),
      onPressed: () {
        // Handle play button press
      },
    ),
    const Text('0:30'), // Example duration, should be dynamically updated
  ],
),
const SizedBox(height: 10),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 208, 252,253),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        'Container 1',
        style: TextStyle(color: Colors.blue),
      ),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 76, 47,168),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        'Container 2',
        style: TextStyle(color: Color.fromARGB(255, 205, 103,149)),
      ),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black54),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        children: [
          Icon(Icons.mic),
          SizedBox(width: 5),
          Text('Container 3'),
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      child: const Icon(Icons.share, color: Colors.blue),
    ),
  ],
),


                    ],
                  ),
                  
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedIndex,
  selectedItemColor: Colors.blue,
  unselectedItemColor: Colors.black,
  onTap: _onItemTapped,
  items: const [
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
