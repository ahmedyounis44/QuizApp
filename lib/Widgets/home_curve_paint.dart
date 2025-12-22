import 'package:flutter/material.dart';

class HomeCurvePaint extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height-40);

    path.quadraticBezierTo(70,size.height,130,size.height-40,);
    path.quadraticBezierTo(180,size.height-50,220,size.height-30,);
    path.quadraticBezierTo(240,size.height,310,size.height-40,);
    path.quadraticBezierTo(360,size.height-50,size.width,size.height-30,);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}