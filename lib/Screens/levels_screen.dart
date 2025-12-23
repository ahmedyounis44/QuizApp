import 'package:flutter/material.dart';
import 'package:quiz_application/Widgets/level_card.dart';

class LevelsScreen extends StatelessWidget {
  const LevelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: const Color(0xFF1F1147),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1F1147),
          elevation: 0,
          leading: Container(
            decoration: const BoxDecoration(
              color:Color(0xFF352864),
              shape: BoxShape.circle,
            ),
            child: const BackButton(color: Colors.white),
          ),
          title: const Text("Levels", style: TextStyle(color: Color(0xFF45F3C2))),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 30,
            childAspectRatio: 0.85,
            children: const [
              LevelCard(level: 1, color: Color(0xFF7B61FF), stars: 3),
              LevelCard(level: 2, color: Color(0xFF4FC3F7), stars: 3),
              LevelCard(level: 3, color: Color(0xFFFF8A50), stars: 2),
              LevelCard(level: 4, color: Color(0xFF4DD0A7), stars: 2),
              LevelCard(level: 5, color: Color(0xFFFF4F9A), stars: 1),
              LevelCard( level: 6, color: Color(0xFF5C6BC0), stars: 0, isLocked: true, ),
            ],
          ),
        ),
      ),
    );
  }
}
