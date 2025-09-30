import 'dart:async';

import 'package:pokedex_app/features/pokemon_list/domain/entities/pokemon.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/providers/pokemon_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_list_notifier.g.dart';

class PokemonListState {
  final List<Pokemon> pokemons;
  final bool isLoading;
  final bool hasReachedMax;

  PokemonListState({
    this.pokemons = const [],
    this.isLoading = false,
    this.hasReachedMax = false,
  });

  PokemonListState copyWith({
    List<Pokemon>? pokemons,
    bool? isLoading,
    bool? hasReachedMax,
  }) {
    return PokemonListState(
      pokemons: pokemons ?? this.pokemons,
      isLoading: isLoading ?? this.isLoading,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}

@riverpod
class PokemonListNotifier extends _$PokemonListNotifier {
  int _page = 0;

  @override
  FutureOr<PokemonListState> build() async {
    state = const AsyncValue.loading();
    final pokemons = await _fetchPokemons(page: 0);
    return PokemonListState(pokemons: pokemons);
  }

  Future<List<Pokemon>> _fetchPokemons({required int page}) {
    return ref.read(pokemonRepositoryProvider).getPokemons(offset: page * 20, limit: 20);
  }

  Future<void> fetchNextPage() async {
    // Evita múltiples llamadas si ya está cargando
    if (state.value?.isLoading ?? true) return;

    state = AsyncData(state.value!.copyWith(isLoading: true));
    _page++;

    final newPokemons = await _fetchPokemons(page: _page);

    state = AsyncData(
      state.value!.copyWith(
        pokemons: [...state.value!.pokemons, ...newPokemons],
        isLoading: false,
        hasReachedMax: newPokemons.isEmpty,
      ),
    );
  }
}
