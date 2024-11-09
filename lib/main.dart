import 'package:flutter/material.dart';
import 'package:training/screens/activity_screen.dart';
import 'package:training/screens/home_screen.dart';

void main() {
  runApp(const TrainingApp());
}
class TrainingApp extends StatelessWidget {
  const TrainingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
      const HomeScreen(),
      routes: {
        HomeScreen.routName : (context) => const HomeScreen(),
        ActivityScreen.routeName :(context)=> ActivityScreen()
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
