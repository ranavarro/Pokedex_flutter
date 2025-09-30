import 'package:flutter/material.dart';
import 'package:pokedex_app/core/theme/type_colors.dart';

class PokemonTypeChip extends StatelessWidget {
  final String type;

  const PokemonTypeChip({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        type[0].toUpperCase() + type.substring(1),
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      backgroundColor: TypeColors.getColorForType(type),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    );
  }
}
