import 'package:flutter/material.dart';
import 'package:give_thanks/screens/cater.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({super.key});

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  String selectedLanguage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 50), // Add space at the top
              Text(
                'Which languages do you speak?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 50),
              LanguageButton(
                label: 'English',
                flag: '🇬🇧',
                isSelected: selectedLanguage == 'English',
                onTap: () {
                  setState(() {
                    selectedLanguage = 'English';
                  });
                },
              ),
              SizedBox(height: 10),
              LanguageButton(
                label: 'Spanish',
                flag: '🇪🇸',
                isSelected: selectedLanguage == 'Spanish',
                onTap: () {
                  setState(() {
                    selectedLanguage = 'Spanish';
                  });
                },
              ),
              SizedBox(height: 10),
              LanguageButton(
                label: 'French',
                flag: '🇫🇷',
                isSelected: selectedLanguage == 'French',
                onTap: () {
                  setState(() {
                    selectedLanguage = 'French';
                  });
                },
              ),
              SizedBox(height: 10),
              LanguageButton(
                label: 'German',
                flag: '🇩🇪',
                isSelected: selectedLanguage == 'German',
                onTap: () {
                  setState(() {
                    selectedLanguage = 'German';
                  });
                },
              ),
              SizedBox(height: 10),
              LanguageButton(
                label: 'Chinese',
                flag: '🇨🇳',
                isSelected: selectedLanguage == 'Chinese',
                onTap: () {
                  setState(() {
                    selectedLanguage = 'Chinese';
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Show more',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.blue),
                ],
              ),
              SizedBox(height: 140),
              SizedBox(
                width: double.infinity, // Make text container full width
                height: 50, // Set the height of the container
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
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
                      MaterialPageRoute(builder: (context) => const ChooseCategory()),
                    );
                  },
                                    child: Text('Next', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
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

class LanguageButton extends StatelessWidget {
  final String label;
  final String flag;
  final bool isSelected;
  final VoidCallback onTap;

  const LanguageButton({
    required this.label,
    required this.flag,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                flag,
                style: TextStyle(
                  fontSize: 24,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(width: 10),
              Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


