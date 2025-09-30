import 'package:flutter/material.dart';
import 'package:pokedex_app/features/pokemon_detail/domain/entities/pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/widgets/pokemon_stat_bar.dart';

class BaseStatsTab extends StatelessWidget {
  final PokemonDetail pokemon;
  final Color mainColor;

  const BaseStatsTab({super.key, required this.pokemon, required this.mainColor});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...pokemon.stats.map(
            (stat) => PokemonStatBar(
              stat: stat,
              mainColor: mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
