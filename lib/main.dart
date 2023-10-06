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

  mySnackbar(message, context) {
  return  ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Toolbar"),
        titleSpacing: 24,
        titleTextStyle: TextStyle(color: Colors.white),
        backgroundColor: Colors.amber,
        shadowColor: Colors.cyan,
        elevation: 16,
        toolbarHeight: 60,
        actions: [
          IconButton(onPressed: () {mySnackbar("I am Comments", context);}, icon: const Icon(Icons.comment)),
          IconButton(onPressed: () {mySnackbar("I am Search", context);}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {mySnackbar("I am Settings", context);}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {mySnackbar("I am Email", context);}, icon: const Icon(Icons.email)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 16,
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
        onPressed: (){mySnackbar("Float button clicked", context);},
      ),
    );
  }
}
