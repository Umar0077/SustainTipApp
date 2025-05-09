import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_new_sustain_app/screens/Starting%20Screens/SplashScreen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((_) {
    print("Firebase Connected ✅");
    runApp(const MyApp());
  });

  runApp(const MyApp()); 
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SustainTip',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: SplashScreen(), 
    );
  }
}
