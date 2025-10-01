import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/widgets/pokemon_card_skeleton.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/notifiers/pokemon_list_notifier.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/providers/filter_provider.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/providers/filtered_pokemon_provider.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/widgets/filter_bottom_sheet.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/widgets/pokemon_card.dart';

class PokemonListScreen extends ConsumerStatefulWidget {
  const PokemonListScreen({super.key});

  @override
  ConsumerState<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends ConsumerState<PokemonListScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 300) {
      ref.read(pokemonListNotifierProvider.notifier).fetchNextPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    final mainListAsync = ref.watch(pokemonListNotifierProvider);
    final filteredPokemons = ref.watch(filteredPokemonListProvider);
    final filter = ref.watch(pokemonFilterNotifierProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: TextField(
                onChanged: (query) => ref.read(pokemonFilterNotifierProvider.notifier).setQuery(query),
                decoration: InputDecoration(
                  hintText: 'Procurar Pokémon...',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.filter_list),
                    onPressed: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent, // Fondo transparente para que el Container decore
                      builder: (_) => const FilterBottomSheet(),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: mainListAsync.when(
                data: (listState) {
                  if (filteredPokemons.isEmpty && (filter.query.isNotEmpty || filter.type != null)) {
                    return const Center(child: Text("No se encontraron resultados"));
                  }
                  return ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.all(8.0),
                    itemCount: listState.isLoadingNextPage ? filteredPokemons.length + 1 : filteredPokemons.length,
                    itemBuilder: (context, index) {
                      if (index >= filteredPokemons.length) {
                        return const PokemonCardSkeleton();
                      }
                      final pokemonDetail = filteredPokemons[index];
                      return PokemonCard(pokemon: pokemonDetail);
                    },
                  );
                },
                loading: () => ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: 8,
                  itemBuilder: (_, __) => const PokemonCardSkeleton(),
                ),
                error: (err, stack) => Center(child: Text('Error: $err')),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }
}
