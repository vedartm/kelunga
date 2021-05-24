import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'dimens.dart';

class KThemes {
  KThemes._();

  static ThemeData dayTheme = ThemeData(
    fontFamily: 'Inter',
    brightness: Brightness.light,
    primaryColor: Colors.white,
    accentColor: KColors.primary,
    iconTheme: IconThemeData(
      color: KColors.textPrimary,
    ),
    // scaffoldBackgroundColor: KColors.scaffoldBackground,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      caption: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.4,
        color: Colors.white,
      ),
      subtitle2: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        letterSpacing: 0.1,
      ),
      subtitle1: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        letterSpacing: 0.15,
      ),
      headline5: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
      headline6: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 24,
        letterSpacing: 0.15,
      ),
      bodyText1: const TextStyle(
        fontSize: 16,
        letterSpacing: 0.8,
        fontWeight: FontWeight.w300,
        color: KColors.textSecondary,
      ),
      bodyText2: const TextStyle(
        fontSize: 12,
        letterSpacing: 0.8,
        fontWeight: FontWeight.w300,
        color: KColors.textSecondary,
      ),
    ),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 2,
    ),
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(KDimens.borderRadius),
      ),
    ),
    dividerTheme: DividerThemeData(
      space: 0,
      color: Color(0xFFADB8D9),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(KDimens.borderRadius),
      ),
      backgroundColor: KColors.scaffoldBackground,
    ),
    cardTheme: CardTheme(
      elevation: 3,
      margin: EdgeInsets.zero,
      shadowColor: KColors.shadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(KDimens.borderRadius),
      ),
    ),
    buttonTheme: ButtonThemeData(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      height: 48,
      minWidth: 48,
      buttonColor: KColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      textTheme: ButtonTextTheme.primary,
      disabledColor: KColors.disabled,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.4,
        ),
        elevation: 0,
        minimumSize: Size(64, 64),
        primary: KColors.primary,
        onPrimary: Colors.white,
        onSurface: KColors.disabled,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.4,
        ),
        minimumSize: Size(64, 64),
        primary: KColors.primary,
        onSurface: KColors.disabled,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        side: BorderSide(color: KColors.primary),
        textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.4,
        ),
        minimumSize: Size(64, 64),
        primary: KColors.primary,
        onSurface: KColors.disabled,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // fillColor: KColors.secondary.withAlpha(20),
      labelStyle: TextStyle(color: KColors.textSecondary),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(KDimens.borderRadius),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(KDimens.borderRadius),
        borderSide: BorderSide(color: KColors.primary, width: 1.0),
      ),
      alignLabelWithHint: true,
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: Colors.white,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: KColors.primary,
      deleteIconColor: Colors.white,
      disabledColor: Colors.grey,
      selectedColor: KColors.primary,
      secondarySelectedColor: KColors.primary,
      labelPadding: const EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(KDimens.borderRadius),
      ),
      labelStyle: TextStyle(
        fontSize: 12,
        letterSpacing: 0.4,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      secondaryLabelStyle: TextStyle(
        fontSize: 12,
        letterSpacing: 0.4,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      brightness: Brightness.light,
    ),
  );

  static ThemeData nightTheme = ThemeData();
}
