import 'package:flutter/material.dart';

class AppThemes {
  static final Color _lightFocusColor = Colors.white.withOpacity(0.12);

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
    primary: Color(0xFF1984F2),
    primaryContainer: Color(0xFF4F5467),
    secondary: Color(0xFF7E36E2),
    tertiary: Color(0xFFBFA3F6),
    background: Color(0xFF050632),
    surface: Color(0xFFF5B70C),
    surfaceTint: Colors.black,
    onBackground: Colors.white,
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
