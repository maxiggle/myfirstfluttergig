import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    String newHexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (newHexColor.length == 6) {
      newHexColor = 'FF$newHexColor';
    }
    return int.parse(newHexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
