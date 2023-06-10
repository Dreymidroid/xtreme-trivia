import 'package:flutter/material.dart';

class LinePainter extends CustomPainter{
  final Color colors;
  LinePainter(this.colors);


  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = colors..style = PaintingStyle.fill;

    Path path = Path();

    // path.


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}