import 'package:flutter/material.dart';
import 'package:eco_mobile_app/screens/intro-screen.dart';
import 'package:eco_mobile_app/screens/home-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eco Properties',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/intro',
      routes: {
        '/intro': (context) => IntroScreen(),
        '/home': (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
