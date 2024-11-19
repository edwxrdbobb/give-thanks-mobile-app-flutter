import 'package:flutter/material.dart';
import 'package:give_thanks/screens/loading.dart';
import 'package:give_thanks/screens/Onboard.dart';
import 'package:give_thanks/screens/auth/CreateAccount.dart';
import 'package:give_thanks/screens/auth/VerifyAccount.dart';
import 'package:give_thanks/screens/auth/Username.dart';
import 'package:give_thanks/screens/auth/Login.dart';
import 'package:give_thanks/screens/auth/Language.dart';
import 'package:give_thanks/screens/auth/Notification.dart';
import 'package:give_thanks/screens/auth/Contacts.dart';
import 'package:give_thanks/screens/auth/Interest.dart';
import 'package:give_thanks/screens/main/Main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Give Thanks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoadingPage(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/create-account': (context) => const CreateAccountScreen(),
        '/verification': (context) => const VerificationScreen(),
        '/set-username': (context) => const SetUsernameScreen(),
        '/login': (context) => const LoginScreen(),
        '/contacts': (context) => const ContactsScreen(),
        '/interests': (context) => const InterestScreen(),
        '/notification': (context) => const NotificationsScreen(),
        '/languages': (context) => const LanguageScreen(),
        '/main': (context) => const MainScreen(), // New route for the main screen with bottom navigation
      },
    );
  }
}