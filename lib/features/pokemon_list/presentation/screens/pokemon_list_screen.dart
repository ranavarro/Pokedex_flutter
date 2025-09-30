import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/widgets/pokemon_card_skeleton.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/notifiers/pokemon_list_notifier.dart';
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
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
      // Llama a fetchNextPage para cargar más pokémons
      ref.read(pokemonListNotifierProvider.notifier).fetchNextPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Observamos el provider que nos da un AsyncValue<PokemonListState>
    final asyncListState = ref.watch(pokemonListNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokédex'),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      // Usamos .when para construir la UI según el estado (loading, error, data)
      body: asyncListState.when(
        data: (listState) {
          // Si hay datos, `listState` es nuestro objeto PokemonListState
          return ListView.builder(
            controller: _scrollController,
            padding: const EdgeInsets.all(8.0),
            // Usamos 'listState.isLoading' para saber si mostrar el esqueleto al final
            itemCount: listState.isLoading ? listState.pokemons.length + 1 : listState.pokemons.length,
            itemBuilder: (context, index) {
              // Si el índice es mayor o igual y estamos cargando, muestra el esqueleto
              if (index >= listState.pokemons.length) {
                return const PokemonCardSkeleton();
              }
              final pokemon = listState.pokemons[index];
              return PokemonCard(pokemon: pokemon);
            },
          );
        },
        // Estado de carga inicial: mostramos una lista de esqueletos
        loading: () => ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: 8,
          itemBuilder: (context, index) => const PokemonCardSkeleton(),
        ),
        // Estado de error inicial
        error: (err, stack) => Center(
          child: Text('Error al cargar los pokémons: $err'),
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
