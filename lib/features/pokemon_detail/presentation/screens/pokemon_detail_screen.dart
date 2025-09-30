import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/l10n/generated/app_localizations.dart';
import 'package:pokedex_app/core/theme/type_colors.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/providers/pokemon_detail_provider.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/widgets/pokemon_info_card.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/widgets/pokemon_stat_bar.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/widgets/pokemon_type_chip.dart';
import 'package:pokedex_app/features/pokemon_favorites/presentation/providers/favorite_pokemon_provider.dart';

class PokemonDetailScreen extends ConsumerWidget {
  final String pokemonName;
  final String pokemonId;

  const PokemonDetailScreen({
    super.key,
    required this.pokemonName,
    required this.pokemonId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(pokemonDetailProvider(pokemonName));
    final textTheme = Theme.of(context).textTheme;
    final l10n = AppLocalizations.of(context)!;

    final isFavorite = ref.watch(favoritePokemonProvider).maybeWhen(
          data: (favorites) => favorites.contains(pokemonId),
          orElse: () => false,
        );

    return Scaffold(
      body: detailAsync.when(
        data: (pokemon) {
          final mainColor = TypeColors.getColorForType(pokemon.types.first);

          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 250.0,
                pinned: true,
                backgroundColor: mainColor,
                actions: [
                  IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.white,
                      size: 28,
                    ),
                    onPressed: () {
                      ref.read(favoritePokemonProvider.notifier).toggleFavorite(pokemonId);
                    },
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    pokemon.name[0].toUpperCase() + pokemon.name.substring(1),
                    style: textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  background: Hero(
                    tag: 'pokemon-$pokemonName',
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Image.network(
                        pokemon.imageUrl,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: 8,
                        children: pokemon.types.map((type) => PokemonTypeChip(type: type)).toList(),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          PokemonInfoCard(
                            label: l10n.weight,
                            value: '${pokemon.weight / 10} kg',
                          ),
                          PokemonInfoCard(
                            label: l10n.height,
                            value: '${pokemon.height / 10} m',
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Text(l10n.stats, style: textTheme.headlineSmall),
                      const SizedBox(height: 16),
                      ...pokemon.stats.map(
                        (stat) => PokemonStatBar(
                          stat: stat,
                          mainColor: mainColor,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
        error: (err, stack) => Center(child: Text('Error: $err')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
