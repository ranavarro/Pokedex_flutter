import 'package:flutter/material.dart';
import 'package:pokedex_app/core/extensions/string_extension.dart';
import 'package:pokedex_app/core/theme/app_text_styles.dart';
import 'package:pokedex_app/features/pokemon_detail/domain/entities/pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/widgets/detail_info_box.dart';

class AboutTab extends StatelessWidget {
  final PokemonDetail pokemon;
  const AboutTab({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Fila para Peso y Altura
          Row(
            children: [
              DetailInfoBox(
                label: 'PESO',
                value: '${pokemon.weight / 10} kg',
                icon: const Icon(Icons.scale, size: 16),
              ),
              const SizedBox(width: 16),
              DetailInfoBox(
                label: 'ALTURA',
                value: '${pokemon.height / 10} m',
                icon: const Icon(Icons.height, size: 16),
              ),
            ],
          ),
          const SizedBox(height: 24),
          // Sección de Habilidades
          Text('Habilidades', style: AppTextStyles.sectionTitle),
          const SizedBox(height: 12),
          Text(
            pokemon.abilities.map((a) => a.capitalized().replaceAll('-', ' ')).join(', '),
            style: AppTextStyles.description,
          ),
        ],
      ),
    );
  }
}
