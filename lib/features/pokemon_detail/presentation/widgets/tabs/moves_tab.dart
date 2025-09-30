import 'package:flutter/material.dart';
import 'package:pokedex_app/core/extensions/string_extension.dart';
import 'package:pokedex_app/core/theme/app_colors.dart';
import 'package:pokedex_app/core/theme/app_text_styles.dart';
import 'package:pokedex_app/features/pokemon_detail/domain/entities/pokemon_detail.dart';

class MovesTab extends StatelessWidget {
  final PokemonDetail pokemon;
  const MovesTab({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    if (pokemon.moves.isEmpty) {
      return Center(child: Text('No moves data available.', style: AppTextStyles.infoLabel));
    }

    return ListView.separated(
      padding: const EdgeInsets.all(24.0),
      itemCount: pokemon.moves.length,
      itemBuilder: (context, index) {
        final move = pokemon.moves[index];
        return Text(
          move.replaceAll('-', ' ').capitalized(),
          style: AppTextStyles.description.copyWith(color: AppColors.grey_2),
        );
      },
      separatorBuilder: (context, index) => const Divider(color: AppColors.grey_5),
    );
  }
}
