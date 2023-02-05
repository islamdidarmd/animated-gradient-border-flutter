import 'package:flutter/material.dart';
import 'flutter_dash_image.dart';
import 'gradient_border_paint.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gradient Border"),
      ),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: Stack(
            children: const [
              FlutterDashImage(),
              GradientBorderPaint(),
            ],
          ),
        ),
      ),
    );
  }
}
