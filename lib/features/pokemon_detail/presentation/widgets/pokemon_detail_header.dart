import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex_app/core/extensions/string_extension.dart';
import 'package:pokedex_app/core/theme/app_colors.dart';
import 'package:pokedex_app/core/theme/app_text_styles.dart';
import 'package:pokedex_app/core/widgets/type_background_icon.dart';
import 'package:pokedex_app/features/pokemon_detail/domain/entities/pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon_favorites/presentation/providers/favorite_pokemon_provider.dart';

class PokemonDetailHeader extends ConsumerWidget {
  final PokemonDetail pokemon;
  final Color mainColor;

  const PokemonDetailHeader({
    super.key,
    required this.pokemon,
    required this.mainColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesAsync = ref.watch(favoritePokemonProvider);
    final isFavorite = favoritesAsync.value?.contains(pokemon.name) ?? false;
    final screenWidth = MediaQuery.of(context).size.width;

    return SliverAppBar(
      expandedHeight: 275.0,
      pinned: true,
      backgroundColor: mainColor,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.white),
        onPressed: () => context.pop(),
      ),
      actions: [
        IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: AppColors.white,
            size: 28,
          ),
          onPressed: () {
            ref.read(favoritePokemonProvider.notifier).toggleFavorite(pokemon.name);
          },
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 60,
              left: 120,
              child: TypeBackgroundIcon(
                type: pokemon.types.first,
                size: 200,
              ),
            ),
            // Contenido del Header
            Positioned(
              top: 100,
              left: 24,
              right: 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemon.name.capitalized(),
                    style: AppTextStyles.pokemonName.copyWith(color: AppColors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      pokemon.formattedId,
                      style: AppTextStyles.pokemonId.copyWith(color: AppColors.white),
                    ),
                  ),
                ],
              ),
            ),
            // Imagen del Pokémon
            Positioned(
              bottom: -12, // Ligeramente sobrepuesto
              child: SizedBox(
                width: screenWidth,
                child: Hero(
                  tag: 'pokemon-${pokemon.name}',
                  child: Image.network(
                    pokemon.imageUrl,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
