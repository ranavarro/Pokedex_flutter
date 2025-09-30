import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/extensions/string_extension.dart';
import 'package:pokedex_app/core/theme/app_colors.dart';
import 'package:pokedex_app/core/theme/app_text_styles.dart';
import 'package:pokedex_app/core/theme/type_colors.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/providers/pokemon_detail_provider.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/widgets/pokemon_type_chip.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/widgets/tabs/about_tab.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/widgets/tabs/base_stats_tab.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/widgets/tabs/moves_tab.dart';

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

    return Scaffold(
      backgroundColor: Colors.black, // Fondo mientras carga
      body: detailAsync.when(
        data: (pokemon) {
          final mainColor = TypeColors.getColorForType(pokemon.types.first);

          return DefaultTabController(
            length: 3, // About, Base Stats, Moves
            child: Scaffold(
              backgroundColor: mainColor,
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: AppColors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.favorite_border, color: AppColors.white, size: 28),
                    onPressed: () {/* Lógica de favoritos */},
                  ),
                ],
              ),
              body: Column(
                children: [
                  // --- HEADER ---
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              pokemon.name.capitalized(),
                              style: AppTextStyles.pokemonName.copyWith(color: AppColors.white),
                            ),
                            Text(
                              pokemon.formattedId,
                              style: AppTextStyles.pokemonId.copyWith(color: AppColors.white),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Wrap(
                              spacing: 8,
                              children: pokemon.types.map((type) => PokemonTypeChip(type: type)).toList(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // --- IMAGEN SOBREPUESTA ---
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned.fill(
                          top: 100,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 80.0),
                              child: Column(
                                children: [
                                  const TabBar(
                                    tabs: [
                                      Tab(text: 'About'),
                                      Tab(text: 'Base Stats'),
                                      Tab(text: 'Moves'),
                                    ],
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      children: [
                                        AboutTab(pokemon: pokemon),
                                        BaseStatsTab(pokemon: pokemon, mainColor: mainColor),
                                        MovesTab(pokemon: pokemon),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          child: Hero(
                            tag: 'pokemon-${pokemon.name}',
                            child: Image.network(
                              pokemon.imageUrl,
                              height: 200,
                              width: 200,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        error: (err, stack) => Scaffold(body: Center(child: Text('Error: $err'))),
        loading: () => const Center(child: CircularProgressIndicator(color: AppColors.white)),
      ),
    );
  }
}
