import 'package:pokedex_app/core/persistance/shared_preferences_provider.dart';
import 'package:pokedex_app/features/pokemon_favorites/domain/repositories/favorite_pokemon_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'favorite_pokemon_repository_impl.g.dart';

class FavoritePokemonRepositoryImpl implements FavoritePokemonRepository {
  final SharedPreferences _prefs;
  static const _favoritesKey = 'favorite_pokemons';

  FavoritePokemonRepositoryImpl(this._prefs);

  @override
  Future<List<String>> getFavorites() async {
    return _prefs.getStringList(_favoritesKey) ?? [];
  }

  @override
  Future<void> saveFavorites(List<String> ids) async {
    await _prefs.setStringList(_favoritesKey, ids);
  }
}

@riverpod
FavoritePokemonRepository favoritePokemonRepository(FavoritePokemonRepositoryRef ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return FavoritePokemonRepositoryImpl(prefs);
}
