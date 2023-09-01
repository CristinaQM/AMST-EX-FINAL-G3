import 'package:flutter/material.dart';

class AppThemes {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);

  static ThemeData lightThemeData = themeData(lightColorScheme, _lightFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        color: colorScheme.primary,
        elevation: 0,
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFFE46A76),
    primaryContainer: Color(0xFF4F5467),
    secondary: Color(0xFFEDF1F5),
    tertiary: Color(0xFF9672CC),
    background: Color(0xFFEDF1F5),
    surface: Color(0xFFF7FAFB),
    surfaceTint: Colors.black,
    onBackground: Color(0xFFD4D8E4),
    error: Color(0xFFE46A76),
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSecondaryContainer: Color(0xFF808183),
    onSurfaceVariant: Colors.grey,
    onSurface: Colors.black,
    brightness: Brightness.light,
    onPrimaryContainer: Color(0xFFBFC4D7),
  );
}
