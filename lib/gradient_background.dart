import 'package:flutter/material.dart';

class GradientBackground {
  const GradientBackground({required this.gradientColors});

  final List<Color> gradientColors;

  Gradient get gradient => LinearGradient(
        colors: gradientColors,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      );
}
