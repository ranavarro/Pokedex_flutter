import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_app/features/pokemon_favorites/data/repositories/favorite_pokemon_repository_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Mock de SharedPreferences
class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  late FavoritePokemonRepositoryImpl repository;
  late MockSharedPreferences mockPrefs;

  setUp(() {
    mockPrefs = MockSharedPreferences();
    repository = FavoritePokemonRepositoryImpl(mockPrefs);
  });

  const favoritesKey = 'favorite_pokemons';
  final favoriteList = ['bulbasaur', 'charmander'];

  test('getFavorites debería devolver una lista de favoritos guardada', () async {
    // Arrange
    when(() => mockPrefs.getStringList(favoritesKey)).thenReturn(favoriteList);

    // Act
    final result = await repository.getFavorites();

    // Assert
    expect(result, favoriteList);
  });

  test('getFavorites debería devolver una lista vacía si no hay nada guardado', () async {
    // Arrange
    when(() => mockPrefs.getStringList(favoritesKey)).thenReturn(null);

    // Act
    final result = await repository.getFavorites();

    // Assert
    expect(result, []);
  });

  test('saveFavorites debería llamar a setStringList con la lista correcta', () async {
    // Arrange
    when(() => mockPrefs.setStringList(favoritesKey, favoriteList)).thenAnswer((_) async => true);

    // Act
    await repository.saveFavorites(favoriteList);

    // Assert
    verify(() => mockPrefs.setStringList(favoritesKey, favoriteList)).called(1);
  });
}
