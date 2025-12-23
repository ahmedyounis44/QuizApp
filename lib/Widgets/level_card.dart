import 'package:flutter/material.dart';
import 'package:quiz_application/Widgets/pentagon_Clipper_paint.dart';

class LevelCard extends StatelessWidget {
  final int level;
  final Color color;
  final int stars;
  final bool isLocked;

  const LevelCard({
    super.key,
    required this.level,
    required this.color,
    required this.stars,
    this.isLocked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            if (index == 1) {
              return Transform.translate(
                offset: const Offset(0, -3.2), 
                child:  Icon(
                  index < stars ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                  size: 18,
                ),
              );
              
            } else {
              return Icon(
                index < stars ? Icons.star : Icons.star_border,
                color: Colors.amber,
                size: 18,
              );
            }
          }),
        ),
        const SizedBox(height: 8),

        // Pentagon Card
        ClipPath(
          clipper: PentagonClipperPaint(),
          child: Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              color: isLocked ? color.withAlpha(20) : color,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (isLocked)
                  const Icon(Icons.lock, color: Colors.white, size: 30)
                else
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Level",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      Text(
                        level.toString().padLeft(2, '0'),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
