import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_app/core/theme/app_colors.dart';

class AppTextStyles {
  static final TextStyle _base = GoogleFonts.poppins(color: AppColors.grey_1);

  static TextStyle get pokemonName => _base.copyWith(fontSize: 24, fontWeight: FontWeight.bold);
  static TextStyle get pokemonId => _base.copyWith(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.grey_3);

  static TextStyle get sectionTitle => _base.copyWith(fontSize: 18, fontWeight: FontWeight.bold);
  static TextStyle get description => _base.copyWith(fontSize: 14, color: AppColors.grey_2, height: 1.5);

  static TextStyle get infoLabel => _base.copyWith(fontSize: 12, color: AppColors.grey_3);
  static TextStyle get infoValue => _base.copyWith(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.grey_1);

  static TextStyle get statName => _base.copyWith(fontSize: 14, color: AppColors.grey_3);
  static TextStyle get statValue => _base.copyWith(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.grey_1);

  static TextStyle get chip =>
      _base.copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.white); // Medium
}
