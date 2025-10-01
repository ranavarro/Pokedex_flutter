import 'package:flutter/material.dart';
import 'package:pokedex_app/core/theme/app_colors.dart';
import 'package:pokedex_app/core/theme/type_colors.dart';
import 'package:pokedex_app/features/pokemon_detail/domain/entities/pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/widgets/pokemon_detail_header.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/widgets/pokemon_type_chip.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/widgets/tabs/about_tab.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/widgets/tabs/base_stats_tab.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/widgets/tabs/moves_tab.dart';

class PokemonDetailScreen extends StatelessWidget {
  final PokemonDetail pokemon;

  const PokemonDetailScreen({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    // Los datos ahora vienen directamente del objeto 'pokemon'
    final mainColor = TypeColors.getColorForType(pokemon.types.first);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: mainColor,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              PokemonDetailHeader(pokemon: pokemon, mainColor: mainColor),
            ];
          },
          body: Container(
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: pokemon.types
                          .map((type) => Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: PokemonTypeChip(type: type),
                              ))
                          .toList(),
                    ),
                  ),
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
      ),
    );
  }
}
