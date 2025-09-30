import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex_app/core/extensions/string_extension.dart';
import 'package:pokedex_app/core/theme/app_colors.dart';
import 'package:pokedex_app/core/theme/app_text_styles.dart';
import 'package:pokedex_app/core/theme/type_colors.dart';
import 'package:pokedex_app/core/widgets/pokemon_card_skeleton.dart';
import 'package:pokedex_app/core/widgets/type_background_icon.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/providers/pokemon_detail_provider.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/widgets/pokemon_type_chip.dart';
import 'package:pokedex_app/features/pokemon_favorites/presentation/providers/favorite_pokemon_provider.dart';
import 'package:pokedex_app/features/pokemon_list/domain/entities/pokemon.dart';

class PokemonCard extends ConsumerWidget {
  final Pokemon pokemon;

  const PokemonCard({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(pokemonDetailProvider(pokemon.name));
    final favoritesAsync = ref.watch(favoritePokemonProvider);
    final isFavorite = favoritesAsync.value?.contains(pokemon.name) ?? false;

    return GestureDetector(
      onTap: () {
        context.goNamed(
          'pokemon-detail',
          pathParameters: {'name': pokemon.name},
          queryParameters: {'id': pokemon.id},
        );
      },
      child: detailAsync.when(
        data: (details) {
          final cardColor = TypeColors.getCardColorForType(details.types.first);
          final primaryType = details.types.first;

          return Card(
            color: cardColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            clipBehavior: Clip.antiAlias,
            child: SizedBox(
              height: 120,
              child: Row(
                children: [
                  // --- Columna de Información (Izquierda) ---
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 12, 8, 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#${pokemon.id.padLeft(3, '0')}',
                            style: AppTextStyles.infoLabel.copyWith(color: AppColors.grey_1),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            pokemon.name.capitalized(),
                            style: AppTextStyles.sectionTitle.copyWith(
                              color: AppColors.grey_1,
                              height: 1.2,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Spacer(),
                          Row(
                            children: details.types
                                .take(2)
                                .map((type) => Padding(
                                      padding: const EdgeInsets.only(right: 6.0),
                                      child: PokemonTypeChip(type: type),
                                    ))
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Card(
                    margin: const EdgeInsets.all(4),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                    color: TypeColors.getColorForType(primaryType),
                    child: SizedBox(
                      width: 105,
                      height: double.infinity,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          TypeBackgroundIcon(type: primaryType, size: 100),
                          Hero(
                            tag: 'pokemon-${pokemon.name}',
                            child: Image.network(
                              pokemon.imageUrl,
                              fit: BoxFit.contain,
                              height: 64,
                              width: 64,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Material(
                              color: Colors.transparent,
                              child: IconButton(
                                splashRadius: 20,
                                icon: Icon(
                                  isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                                  color: isFavorite ? AppColors.white : AppColors.white.withOpacity(0.5),
                                ),
                                onPressed: () {
                                  ref.read(favoritePokemonProvider.notifier).toggleFavorite(pokemon.name);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        loading: () => const PokemonCardSkeleton(),
        error: (_, __) => Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            color: AppColors.grey_4,
            child: const Center(child: Icon(Icons.error))),
      ),
    );
  }
}
