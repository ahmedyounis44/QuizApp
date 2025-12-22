import 'package:flutter/material.dart';
import 'package:quiz_application/Widgets/home_curve_paint.dart';
import 'package:quiz_application/gen/assets.gen.dart';

class HomeWelcomeWidget extends StatelessWidget {
  const HomeWelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HomeCurvePaint(),
      child: Container(
        width: double.maxFinite,
        height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(Assets.images.oldspace.path).image,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const SizedBox(height: 20),
            const Icon(Icons.lightbulb_outline, color: Colors.white, size: 80),
            const SizedBox(height: 20),
            const Text(
              "Quizzles",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFF45F3C2),
              ),
            ),
             const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
