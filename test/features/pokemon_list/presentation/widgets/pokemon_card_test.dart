import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_app/features/pokemon_detail/domain/entities/pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon_favorites/domain/repositories/favorite_pokemon_repository.dart';
import 'package:pokedex_app/features/pokemon_favorites/presentation/providers/favorite_pokemon_provider.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/widgets/pokemon_card.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class MockFavoritePokemonRepository extends Mock implements FavoritePokemonRepository {}

// Un mock del notifier para controlar el estado de los favoritos en el test
class FakeFavoritePokemonNotifier extends AutoDisposeAsyncNotifier<List<String>> implements FavoritePokemon {
  FakeFavoritePokemonNotifier(List<String> initialFavorites) {
    state = AsyncData(initialFavorites);
  }

  @override
  FutureOr<List<String>> build() {
    return state.value ?? [];
  }

  @override
  Future<void> toggleFavorite(String pokemonId) async {
    final favorites = List<String>.from(state.value ?? []);
    if (favorites.contains(pokemonId)) {
      favorites.remove(pokemonId);
    } else {
      favorites.add(pokemonId);
    }
    state = AsyncData(favorites);
  }
}

void main() {
  final bulbasaur = PokemonDetail(
    id: 1,
    name: 'bulbasaur',
    imageUrl: 'url_to_image',
    height: 7,
    weight: 69,
    types: ['grass', 'poison'],
    stats: [],
    abilities: [],
    moves: [],
  );

  testWidgets('PokemonCard muestra los datos y el estado de favorito correctamente', (tester) async {
    // Arrange
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          // Sobrescribimos el provider con nuestro fake notifier
          favoritePokemonProvider.overrideWith(() => FakeFavoritePokemonNotifier(['bulbasaur'])),
        ],
        child: MaterialApp(
          home: Scaffold(body: PokemonCard(pokemon: bulbasaur)),
        ),
      ),
    );

    // Act y Assert
    expect(find.text('Bulbasaur'), findsOneWidget);
    expect(find.text('#001'), findsOneWidget);
    expect(find.byIcon(Icons.favorite), findsOneWidget); // Es favorito

    // Toca el botón de favorito para quitarlo
    await tester.tap(find.byIcon(Icons.favorite));
    await tester.pump();

    // Re-Assert
    expect(find.byIcon(Icons.favorite_border_outlined), findsOneWidget); // Ya no es favorito
  });
}
