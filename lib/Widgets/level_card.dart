import 'package:flutter/material.dart';
import 'package:quiz_application/Widgets/pentagon_clipper_paint.dart';
import 'package:quiz_application/gen/assets.gen.dart';

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
                child: Icon(
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
        ClipPath(
          clipper: PentagonClipperPaint(),
          child: SizedBox(
            width: 110,
            height: 110,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: Image.asset(
                    Assets.images.oldspace.path,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    color: isLocked
                        ? color.withValues(alpha: 0.75)
                        : color.withValues(alpha: 0.28),
                  ),
                ),
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
                if (isLocked)
                  const Icon(Icons.lock, color: Colors.white, size: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
