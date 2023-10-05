import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: ThemeData(primarySwatch: Colors.brown),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Toolbar"),
        titleSpacing: 24,
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        toolbarOpacity: 0.5,
        shadowColor: Colors.cyan,
        elevation: 16,
        toolbarHeight: 60,
      ),
      body: const Text("Hello Dart"),
    );
  }
}
