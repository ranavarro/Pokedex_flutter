import 'package:flutter/material.dart';
import 'package:pokedex_app/core/extensions/string_extension.dart';
import 'package:pokedex_app/core/theme/app_colors.dart';
import 'package:pokedex_app/core/theme/app_text_styles.dart';
import 'package:pokedex_app/features/pokemon_detail/domain/entities/pokemon_detail.dart';

class AboutTab extends StatelessWidget {
  final PokemonDetail pokemon;
  const AboutTab({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoTable(context),
          const SizedBox(height: 24),
          Text('Habilidades', style: AppTextStyles.sectionTitle),
          const SizedBox(height: 16),
          Text(
            pokemon.abilities.map((a) => a.capitalized().replaceAll('-', ' ')).join(', '),
            style: AppTextStyles.description,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoTable(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildInfoColumn('PESO', '${pokemon.weight / 10} kg', Icons.scale),
          const SizedBox(width: 16),
          const VerticalDivider(thickness: 1, color: AppColors.grey_5, indent: 8, endIndent: 8),
          const SizedBox(width: 16),
          _buildInfoColumn('ALTURA', '${pokemon.height / 10} m', Icons.height),
        ],
      ),
    );
  }

  Widget _buildInfoColumn(String label, String value, IconData icon) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 16, color: AppColors.grey_3),
            const SizedBox(width: 8),
            Text(value, style: AppTextStyles.infoValue),
          ],
        ),
        const SizedBox(height: 8),
        Text(label, style: AppTextStyles.infoLabel),
      ],
    );
  }
}
