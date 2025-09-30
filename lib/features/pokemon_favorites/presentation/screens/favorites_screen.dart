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
        data: (favoriteNames) {
          if (favoriteNames.isEmpty) {
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

          final allPokemonsAsync = ref.watch(pokemonListNotifierProvider);

          return allPokemonsAsync.when(
            data: (pokemonListState) {
              final favoritePokemons = pokemonListState.pokemons.where((p) => favoriteNames.contains(p.name)).toList();

              return ListView.builder(
                padding: const EdgeInsets.all(8.0),
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
