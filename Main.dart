import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_new_sustain_app/screens/Homepages/home_page.dart';
import 'package:my_new_sustain_app/screens/Starting%20Screens/OnboardingScreen.dart';
import 'package:my_new_sustain_app/screens/Starting%20Screens/SplashScreen.dart';  // Import SplashScreen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print("Firebase Connected ✅");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My New Sustain App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(), // Set the SplashScreen as the home
    );
  }
}

