abstract class FavoritePokemonRepository {
  Future<List<String>> getFavorites();
  Future<void> saveFavorites(List<String> ids);
}
