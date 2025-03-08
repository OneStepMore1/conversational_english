import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const GradientText(this.text, {super.key, required this.style});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [
          Colors.deepPurpleAccent,
          Colors.pinkAccent,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromLTWH(0.0, 0.0, bounds.width, bounds.height)),
      child: Text(
        text,
        style: style.copyWith(color: Colors.white),
      ),
    );
  }
}
