import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex_app/features/pokemon_list/domain/entities/pokemon.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonCard({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: () {
        // Navegación a la pantalla de detalle
        context.goNamed(
          'pokemon-detail',
          pathParameters: {'name': pokemon.name},
          queryParameters: {'id': pokemon.id},
        );
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Hero(
                  tag: 'pokemon-${pokemon.name}',
                  child: Image.network(
                    pokemon.imageUrl,
                    fit: BoxFit.contain,
                    // Placeholder mientras carga la imagen
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(child: CircularProgressIndicator.adaptive());
                    },
                    // Placeholder si hay un error
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.error_outline, size: 48);
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                pokemon.name[0].toUpperCase() + pokemon.name.substring(1),
                style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
