import 'package:flutter/material.dart';
import 'package:give_thanks/screens/homepage.dart';
import 'package:give_thanks/screens/lang.dart';

class SendNotifications extends StatefulWidget {
  const SendNotifications({super.key});

  @override
  State<SendNotifications> createState() => _SendNotificationsState();
}

class _SendNotificationsState extends State<SendNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 50), // Add space at the top
              Text(
                'Turn on Notifications',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 6),
              Text(
                'Get the most out of Give Thanks by staying up to date with what is happening',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 90),
              Icon(
                Icons.notification_add,
                size: 140,
              ),
              SizedBox(height: 150),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent, // Gold color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LandingPage()),
                      );
                  },
                  child: Text('Allow Notifications', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Blue color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LandingPage()),
                      );
                    },
                  child: Text('Skip', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
