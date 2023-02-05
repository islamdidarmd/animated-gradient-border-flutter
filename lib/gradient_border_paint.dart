import 'package:flutter/material.dart';

import 'gradient_border_painter.dart';

class GradientBorderPaint extends StatefulWidget {
  const GradientBorderPaint({super.key});

  @override
  State<GradientBorderPaint> createState() => _GradientBorderPaintState();
}

class _GradientBorderPaintState extends State<GradientBorderPaint>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    _animation =
        Tween<double>(begin: 0.0, end: 4.0).animate(_animationController);
    _animationController
      ..forward()
      ..repeat(reverse: false);
  }

  Gradient get _gradient => const LinearGradient(
        colors: [
          Colors.yellowAccent,
          Colors.redAccent,
          Colors.greenAccent,
        ],
      );

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animation,
      child: CustomPaint(
        size: const Size(double.infinity, double.infinity),
        painter: GradientBorderPainter(
          radius: 50,
          strokeWidth: 4,
          gradient: _gradient,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
