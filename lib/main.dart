import 'package:flutter/material.dart';

void main() {
  runApp(const RiseSoldiersApp());
}

class RiseSoldiersApp extends StatelessWidget {
  const RiseSoldiersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rise Soldiers',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int xp = 0;
  int streak = 0;

  void train() {
    setState(() {
      xp += 20;
      streak += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rise Soldiers")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text("XP: $xp", style: const TextStyle(fontSize: 24)),
            Text("Streak: $streak", style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: train,
              child: const Text("Start Training"),
            ),
          ],
        ),
      ),
    );
  }
}