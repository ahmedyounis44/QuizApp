import 'package:flutter/material.dart';
class PentagonClipperPaint extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(size.width * 0.5, 0); // top center
    path.lineTo(size.width, size.height * 0.38); // top right
    path.lineTo(size.width * 0.82, size.height); // bottom right
    path.lineTo(size.width * 0.18, size.height); // bottom left
    path.lineTo(0, size.height * 0.38); // top left
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}