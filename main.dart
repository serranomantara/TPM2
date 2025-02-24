import 'package:tugastpm/halaman.dart/homepage.dart';
import 'package:flutter/material.dart';
import 'package:tugastpm/halaman.dart/loginpage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(), // Tampilkan halaman login pertama kali
      routes: {
        '/home': (context) => const HomePage(), // Route ke halaman kalkulator
      },
    );
  }
}
