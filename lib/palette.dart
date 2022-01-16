import 'package:flutter/material.dart';

class Palette {
  static Color primary = Colors.pinkAccent;
  static Color secondary = Colors.white;
  static Color error = Colors.red;
  static Color success = Colors.green;
  static Color warning = Colors.orange;
  static Color light = Colors.white38;
  static Color dark = Colors.black54;

  static LinearGradient gradientWith(Color color) {
    return LinearGradient(colors: [
      color.withOpacity(.9),
      color.withOpacity(.7),
      color.withOpacity(.2)
    ]);
  }

  static LinearGradient primaryGradient() {
    return LinearGradient(colors: [
      primary,
      primary.withOpacity(.15),
    ]);
  }
}
