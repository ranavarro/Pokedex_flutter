import 'package:flutter/material.dart';

class PokemonInfoCard extends StatelessWidget {
  final String label;
  final String value;

  const PokemonInfoCard({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Text(
          value,
          style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600),
        ),
      ],
    );
  }
}
