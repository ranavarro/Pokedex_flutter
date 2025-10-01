import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_app/features/pokemon_favorites/data/repositories/favorite_pokemon_repository_impl.dart';
import 'package:pokedex_app/features/pokemon_favorites/domain/repositories/favorite_pokemon_repository.dart';
import 'package:pokedex_app/features/pokemon_favorites/presentation/providers/favorite_pokemon_provider.dart';

// Mock del Repositorio
class MockFavoritePokemonRepository extends Mock implements FavoritePokemonRepository {}

void main() {
  late MockFavoritePokemonRepository mockRepository;

  setUp(() {
    mockRepository = MockFavoritePokemonRepository();
  });

  test('toggleFavorite debería añadir un pokemon si no es favorito', () async {
    // Arrange
    const pokemonName = 'pikachu';
    when(() => mockRepository.getFavorites()).thenAnswer((_) async => ['bulbasaur']);
    when(() => mockRepository.saveFavorites(any())).thenAnswer((_) async {});

    final container = ProviderContainer(
      overrides: [
        favoritePokemonRepositoryProvider.overrideWithValue(mockRepository),
      ],
    );

    final notifier = container.read(favoritePokemonProvider.notifier);

    // Esperar a que el estado inicial se cargue
    await container.read(favoritePokemonProvider.future);

    // Act
    await notifier.toggleFavorite(pokemonName);

    // Assert
    final state = await container.read(favoritePokemonProvider.future);
    expect(state, contains(pokemonName));
    expect(state, hasLength(2));
    verify(() => mockRepository.saveFavorites(['bulbasaur', 'pikachu'])).called(1);
  });

  test('toggleFavorite debería eliminar un pokemon si ya es favorito', () async {
    // Arrange
    const pokemonName = 'bulbasaur';
    when(() => mockRepository.getFavorites()).thenAnswer((_) async => ['bulbasaur', 'charmander']);
    when(() => mockRepository.saveFavorites(any())).thenAnswer((_) async {});

    final container = ProviderContainer(
      overrides: [
        favoritePokemonRepositoryProvider.overrideWithValue(mockRepository),
      ],
    );

    final notifier = container.read(favoritePokemonProvider.notifier);

    await container.read(favoritePokemonProvider.future);

    // Act
    await notifier.toggleFavorite(pokemonName);

    // Assert
    final state = await container.read(favoritePokemonProvider.future);
    expect(state, isNot(contains(pokemonName)));
    expect(state, ['charmander']);
    verify(() => mockRepository.saveFavorites(['charmander'])).called(1);
  });
}
