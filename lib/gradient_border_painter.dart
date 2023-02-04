import 'package:flutter/material.dart';

class GradientBorderPainter extends CustomPainter {
  final double height;
  final double width;
  final double strokeWidth;
  final Gradient gradient;
  final _paint = Paint()..style = PaintingStyle.stroke;

  GradientBorderPainter({
    Key? key,
    required this.height,
    required this.width,
    required this.strokeWidth,
    required this.gradient,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final rect = Rect.fromCenter(
      center: center,
      width: width,
      height: height,
    );
    _paint
      ..strokeWidth = strokeWidth
      ..shader = gradient.createShader(rect);
    canvas.drawRect(rect, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
