import 'package:flutter/material.dart';

class ProgressBarPainter extends CustomPainter {
  final int progress;

  final bgPaint = Paint()
    ..style = PaintingStyle.fill
    ..color = Colors.grey;

  ProgressBarPainter({
    required this.progress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final leftTop = Offset(16, center.dy - 5);
    final leftCenter = Offset(16 - 5, center.dy);
    final leftBottom = Offset(16, center.dy + 5);

    final rightTop = Offset(size.width - 16, (size.height / 2) - 5);
    final rightCenter = Offset(size.width - 16 + 5, size.height / 2);
    final rightBottom = Offset(size.width - 16, (size.height / 2) + 5);

    final bgRect = Rect.fromPoints(leftTop, rightBottom);

    final path = Path()
      ..moveTo(leftTop.dx, leftTop.dy)
      ..quadraticBezierTo(
          leftCenter.dx, leftCenter.dy, leftBottom.dx, leftBottom.dy)
      ..moveTo(leftTop.dx, leftTop.dy)
      ..addRect(bgRect)
      ..moveTo(rightTop.dx, rightTop.dy)
      ..quadraticBezierTo(
          rightCenter.dx, rightCenter.dy, rightBottom.dx, rightBottom.dy);

    canvas.drawPath(path, bgPaint);
  }

  @override
  bool shouldRepaint(ProgressBarPainter oldDelegate) {
    return oldDelegate.progress != this.progress;
  }
}
