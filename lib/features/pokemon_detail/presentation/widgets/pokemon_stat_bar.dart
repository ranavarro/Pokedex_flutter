import 'package:flutter/material.dart';
import 'package:pokedex_app/features/pokemon_detail/domain/entities/pokemon_detail.dart';

class PokemonStatBar extends StatelessWidget {
  final Stat stat;
  final Color mainColor;

  const PokemonStatBar({
    super.key,
    required this.stat,
    required this.mainColor,
  });

  String _getStatAbbreviation(String statName) {
    switch (statName) {
      case 'hp':
        return 'HP';
      case 'attack':
        return 'ATK';
      case 'defense':
        return 'DEF';
      case 'special-attack':
        return 'SATK';
      case 'special-defense':
        return 'SDEF';
      case 'speed':
        return 'SPD';
      default:
        return statName.toUpperCase();
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    // Max stat value for normalization (based on known max stats in games)
    const double maxStatValue = 255.0;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            child: Text(
              _getStatAbbreviation(stat.name),
              style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 40,
            child: Text(stat.value.toString(), style: textTheme.bodyMedium),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: stat.value / maxStatValue,
                minHeight: 10,
                backgroundColor: mainColor.withOpacity(0.2),
                valueColor: AlwaysStoppedAnimation<Color>(mainColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
