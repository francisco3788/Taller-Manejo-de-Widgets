import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Example Widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AppBarScreen(), // Aquí llamamos la pantalla con el AppBar
    );
  }
}

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.account_circle_rounded),
        backgroundColor: Colors.blueAccent,
        title: const Text('My AppBar'),
        elevation: 18,
        shadowColor: Colors.blueGrey,
      ), // AppBar
      body: const Center(
        child: Text(
          'Hi, AppBar',
          style: TextStyle(fontSize: 20),
        ),
      ), // Body
    ); // Scaffold
  }
}