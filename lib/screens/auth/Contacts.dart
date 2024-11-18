import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Find Contacts!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'See all of your friends\nthat are already on Give Thanks',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 40),
              // Contact Avatars
              Stack(
                alignment: Alignment.center,
                children: [
                  // Example contact avatars - replace with actual contact data
                  Positioned(
                    top: 0,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.purple[100],
                          child: const Text('J'),
                        ),
                        const SizedBox(width: 8),
                        const CircleAvatar(
                          backgroundColor: Colors.blue,
                          child:
                              Text('R', style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 40,
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          NetworkImage('https://via.placeholder.com/60'),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.purple[100],
                          child: const Text('M'),
                        ),
                        const SizedBox(width: 8),
                        const CircleAvatar(
                          backgroundColor: Colors.blue,
                          child:
                              Text('P', style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  // TODO: Implement contact search
                },
                child: const Text(
                  'Search Contact',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/notification');
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
