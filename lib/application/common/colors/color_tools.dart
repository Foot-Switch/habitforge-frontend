import 'package:flutter/material.dart';

MaterialColor createMaterialColor(String colorHex) {
  final Map<int, Color> swatch = {};
  final hexColor = int.parse(colorHex, radix: 16);
  Color color = Color(0xFF000000 | hexColor);
  final int r = color.red, g = color.green, b = color.blue;
  List colorStrengths = <double>[.05];
  for (int i = 1; i < 10; i++) {
    colorStrengths.add(0.1 * i);
  }
  for (var strength in colorStrengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

Color getContrastingTextColor(Color backgroundColor) {
  double luminance = (0.299 * backgroundColor.red + 0.587 * backgroundColor.green + 0.114 * backgroundColor.blue) / 255;
  return luminance > 0.5 ? Colors.black : Colors.white;
}
