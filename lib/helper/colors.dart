import 'package:flutter/material.dart';

final colorPrimary = Color(0xfffabf48);
final colorAccent = Color(0xfff8cc73);
final colorSecondary = Color(0xffff6d3b);


MaterialColor buildMaterialColor(Color color) {
  /*
   // method convert the Hex color to make primarySwatch accept the color
   // use it in main like this
   primarySwatch: buildMaterialColor(colorPrimary),
   */
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red,
      g = color.green,
      b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}