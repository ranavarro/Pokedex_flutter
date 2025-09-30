import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/l10n/generated/app_localizations.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/providers/pokemon_providers.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/widgets/pokemon_card.dart';

class PokemonListScreen extends ConsumerWidget {
  const PokemonListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Para este ejemplo, solo cargamos la primera página.
    // Una implementación completa usaría un Notifier para manejar el estado de la paginación.
    final pokemonsAsync = ref.watch(pokemonsProvider(page: 0));
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.pokemonListTitle),
      ),
      body: pokemonsAsync.when(
        data: (pokemons) {
          return GridView.builder(
            padding: const EdgeInsets.all(12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.9,
            ),
            itemCount: pokemons.length,
            itemBuilder: (context, index) {
              final pokemon = pokemons[index];
              return PokemonCard(pokemon: pokemon);
            },
          );
        },
        error: (err, stack) => Center(child: Text('Error: $err')),
        loading: () => const Center(
          // Tambien se puede usar una animación de Pokebola o un Skeleton
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
