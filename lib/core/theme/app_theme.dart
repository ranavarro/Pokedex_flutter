import 'package:flutter/material.dart';
import 'package:pokedex_app/core/theme/app_colors.dart';
import 'package:pokedex_app/core/theme/app_text_styles.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.white),
    ),
    textTheme: TextTheme(
      displayLarge: AppTextStyles.pokemonName,
      bodyMedium: AppTextStyles.description,
      labelSmall: AppTextStyles.infoLabel,
    ),
    chipTheme: ChipThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      labelStyle: AppTextStyles.chip,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
    ),
    tabBarTheme: TabBarThemeData(
      labelStyle: AppTextStyles.infoValue,
      unselectedLabelStyle: AppTextStyles.infoValue.copyWith(color: AppColors.grey_3),
      labelColor: AppColors.grey_1,
      unselectedLabelColor: AppColors.grey_3,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(color: AppColors.primary, width: 2),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.grey_3,
      selectedLabelStyle: AppTextStyles.infoLabel.copyWith(color: AppColors.primary, fontSize: 10),
      unselectedLabelStyle: AppTextStyles.infoLabel.copyWith(fontSize: 10),
      type: BottomNavigationBarType.fixed,
      elevation: 8.0,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
      background: AppColors.background,
    ),
  );
}
