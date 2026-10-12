import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Color tokens ported from the Tailwind config of the original HTML.
class AppColors {
  AppColors._();

  static const surface = Color(0xFFF8F9FF);
  static const surfaceContainerLowest = Color(0xFFFFFFFF);
  static const surfaceContainerLow = Color(0xFFEFF4FF);
  static const surfaceContainer = Color(0xFFE5EEFF);
  static const primary = Color(0xFF000000);
  static const onPrimary = Color(0xFFFFFFFF);
  static const onSurface = Color(0xFF0B1C30);
  static const onSurfaceVariant = Color(0xFF45464D);
  static const secondary = Color(0xFF515F74);
  static const outline = Color(0xFF76777D);

  static const green = Color(0xFF16A34A);
  static const greenBg = Color(0xFFF0FDF4);
  static const greenText = Color(0xFF15803D);
}

/// Spacing tokens.
class AppSpace {
  AppSpace._();

  static const xs = 4.0;
  static const sm = 8.0;
  static const md = 16.0;
  static const lg = 24.0;
  static const gutterMobile = 16.0;
}

/// Typography tokens (Plus Jakarta Sans).
class AppText {
  AppText._();

  static TextStyle _base(double size, double height, double spacing, FontWeight w) =>
      GoogleFonts.plusJakartaSans(
        fontSize: size,
        height: height / size,
        letterSpacing: size * spacing,
        fontWeight: w,
        color: AppColors.onSurface,
      );

  static final headlineSm = _base(20, 28, -0.01, FontWeight.w600);
  static final titleMd = _base(16, 24, -0.005, FontWeight.w600);
  static final titleSm = _base(14, 20, 0, FontWeight.w600);
  static final bodyMd = _base(14, 22, 0, FontWeight.w400);
  static final bodySm = _base(12, 18, 0.01, FontWeight.w400);
  static final labelMd = _base(13, 18, 0.01, FontWeight.w500);
  static final labelSm = _base(11, 16, 0.04, FontWeight.w600);
}

ThemeData buildAppTheme() {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.surface,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      surface: AppColors.surface,
      primary: AppColors.primary,
    ),
    textTheme: GoogleFonts.plusJakartaSansTextTheme(),
  );
}

/// Soft shadow equivalent to Tailwind `shadow-sm`.
const List<BoxShadow> shadowSm = [
  BoxShadow(color: Color(0x0D000000), blurRadius: 2, offset: Offset(0, 1)),
];
