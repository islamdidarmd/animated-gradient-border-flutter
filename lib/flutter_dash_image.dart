import 'package:flutter/material.dart';

class FlutterDashImage extends StatelessWidget {
  const FlutterDashImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(shape: CircleBorder()),
      child: Image.asset(
        'assets/images/flutter_dash.jpg',
        height: 100,
        width: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
