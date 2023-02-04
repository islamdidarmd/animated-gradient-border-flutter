import 'package:flutter/material.dart';

import 'gradient_border_painter.dart';

class GradientBorderPaint extends StatelessWidget {
  const GradientBorderPaint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, double.infinity),
      painter: GradientBorderPainter(
        height: 100,
        width: 100,
        strokeWidth: 4,
        gradient: const LinearGradient(
          colors: [Colors.yellowAccent, Colors.redAccent, Colors.greenAccent],
        ),
      ),
    );
  }
}
