import 'dart:async';

import 'package:pokedex_app/features/pokemon_detail/domain/entities/pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/providers/pokemon_detail_provider.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/providers/pokemon_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_list_notifier.g.dart';

// El estado ahora contendrá una lista de PokemonDetail
class PokemonListState {
  final List<PokemonDetail> pokemons;
  final bool isLoadingNextPage;
  final bool hasReachedMax;

  PokemonListState({
    this.pokemons = const [],
    this.isLoadingNextPage = false,
    this.hasReachedMax = false,
  });

  PokemonListState copyWith({
    List<PokemonDetail>? pokemons,
    bool? isLoadingNextPage,
    bool? hasReachedMax,
  }) {
    return PokemonListState(
      pokemons: pokemons ?? this.pokemons,
      isLoadingNextPage: isLoadingNextPage ?? this.isLoadingNextPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}

@riverpod
class PokemonListNotifier extends _$PokemonListNotifier {
  int _page = 0;
  // Para evitar llamadas múltiples mientras se carga una página
  bool _isFetching = false;

  @override
  FutureOr<PokemonListState> build() {
    _isFetching = true;
    // La carga inicial ahora devuelve un PokemonListState
    return _fetchAndHydratePokemons(page: 0).then((pokemons) {
      _isFetching = false;
      return PokemonListState(pokemons: pokemons);
    });
  }

  Future<List<PokemonDetail>> _fetchAndHydratePokemons({required int page}) async {
    final basicPokemonList = await ref.read(pokemonRepositoryProvider).getPokemons(offset: page * 20, limit: 20);
    if (basicPokemonList.isEmpty) {
      return [];
    }
    // "Hidratamos" la lista obteniendo los detalles de cada Pokémon
    final hydratedList = await Future.wait(
      basicPokemonList.map(
        (p) => ref.read(pokemonDetailProvider(p.name).future),
      ),
    );
    return hydratedList;
  }

  Future<void> fetchNextPage() async {
    // Si ya está cargando o no hay más páginas, no hacemos nada
    if (_isFetching || (state.value?.hasReachedMax ?? false)) return;

    _isFetching = true;
    state = AsyncData(state.value!.copyWith(isLoadingNextPage: true));
    _page++;

    final newPokemons = await _fetchAndHydratePokemons(page: _page);

    state = AsyncData(
      state.value!.copyWith(
        pokemons: [...state.value!.pokemons, ...newPokemons],
        isLoadingNextPage: false,
        hasReachedMax: newPokemons.isEmpty,
      ),
    );
    _isFetching = false;
  }
}
