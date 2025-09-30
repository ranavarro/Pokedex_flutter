import 'dart:async';

import 'package:pokedex_app/features/pokemon_favorites/data/repositories/favorite_pokemon_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_pokemon_provider.g.dart';

@riverpod
class FavoritePokemon extends _$FavoritePokemon {
  @override
  FutureOr<List<String>> build() async {
    // Carga inicial de favoritos desde el almacenamiento
    return ref.watch(favoritePokemonRepositoryProvider).getFavorites();
  }

  Future<void> toggleFavorite(String pokemonId) async {
    final favorites = List<String>.from(state.value ?? []);

    if (favorites.contains(pokemonId)) {
      favorites.remove(pokemonId);
    } else {
      favorites.add(pokemonId);
    }

    state = AsyncData(favorites);

    // Guardar en el almacenamiento
    await ref.read(favoritePokemonRepositoryProvider).saveFavorites(favorites);
  }
}
