// lib/theme/app_theme.dart
import 'package:flutter/material.dart';

class AppTheme {
  // 1. Definimos los colores base de tu paleta
  static const Color _luxraySeed = Color(0xFF4b4949);
  static const Color _blueAccent = Color(0xFF8cc5d8);
  static const Color _yellowSecondary = Color(0xFFfbca18);


  // 2. Tema Claro
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _luxraySeed,
        primary: _luxraySeed,     
        secondary: _blueAccent,    
        brightness: Brightness.light,
        tertiary: _yellowSecondary,
        primaryContainer: _yellowSecondary,
        onPrimaryContainer: _luxraySeed,
        surfaceContainerLow: _yellowSecondary,
        surface: Colors.white, 
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: _luxraySeed,
        elevation: 0,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      listTileTheme: ListTileThemeData(
        iconColor: _blueAccent,
        textColor: _luxraySeed,
      )
    );
  }

  
}
