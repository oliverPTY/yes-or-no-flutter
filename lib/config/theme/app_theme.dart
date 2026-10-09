
import 'package:flutter/material.dart';

const Color color = Color.fromARGB(255, 59, 101, 180);

const List<Color> colorsTheme = [
  color,
  Colors.green,
  Colors.yellow,
  Colors.pink,
  Colors.purple,
  Colors.orange
];

class AppTheme {
  final int selectedColor;
  AppTheme({
    required this.selectedColor,
    }):assert(selectedColor >= 0 && selectedColor < colorsTheme.length, 'selectedColor must be between 0 and ${colorsTheme.length - 1}');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: colorsTheme[selectedColor],  
      ),
    );
  }
}