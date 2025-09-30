import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/l10n/generated/app_localizations.dart';
import 'package:pokedex_app/features/pokemon_favorites/presentation/providers/favorite_pokemon_provider.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/notifiers/pokemon_list_notifier.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/widgets/pokemon_card.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesAsync = ref.watch(favoritePokemonProvider);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.favoritesTitle),
      ),
      body: favoritesAsync.when(
        data: (favoriteIds) {
          if (favoriteIds.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.favorite_border, size: 80, color: Colors.grey),
                  const SizedBox(height: 16),
                  Text(l10n.noFavorites, style: Theme.of(context).textTheme.headlineSmall),
                  Text(l10n.noFavoritesHint, style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            );
          }

          // Este provider obtiene la lista completa y la filtra.
          // Para una app con muchísimos Pokémon, se podría optimizar
          // haciendo llamadas individuales por ID favorito.
          final allPokemonsAsync = ref.watch(pokemonListNotifierProvider);

          return allPokemonsAsync.when(
            data: (pokemonListState) {
              final favoritePokemons = pokemonListState.pokemons.where((p) => favoriteIds.contains(p.id)).toList();

              return GridView.builder(
                padding: const EdgeInsets.all(12),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.9,
                ),
                itemCount: favoritePokemons.length,
                itemBuilder: (context, index) {
                  return PokemonCard(pokemon: favoritePokemons[index]);
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, stack) => Center(child: Text('Error: $err')),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
