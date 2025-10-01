import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_app/features/pokemon_detail/data/repositories/pokemon_detail_repository_impl.dart';
import 'package:pokedex_app/features/pokemon_detail/domain/entities/pokemon_detail.dart';

// Mock de Dio usando mocktail
class MockDio extends Mock implements Dio {}

void main() {
  late PokemonDetailRepositoryImpl repository;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    repository = PokemonDetailRepositoryImpl(mockDio);
  });

  const pokemonName = 'bulbasaur';
  final pokemonDetailJson = {
    'id': 1,
    'name': 'bulbasaur',
    'height': 7,
    'weight': 69,
    'sprites': {
      'other': {
        'official-artwork': {
          'front_default':
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png'
        }
      }
    },
    'types': [
      {
        'type': {'name': 'grass'}
      },
      {
        'type': {'name': 'poison'}
      }
    ],
    'stats': [
      {
        'stat': {'name': 'hp'},
        'base_stat': 45
      }
    ],
    'abilities': [
      {
        'ability': {'name': 'overgrow'}
      }
    ],
    'moves': [
      {
        'move': {'name': 'razor-wind'}
      }
    ]
  };

  test('debería devolver PokemonDetail cuando la llamada a la API es exitosa', () async {
    // Arrange
    when(() => mockDio.get(any())).thenAnswer(
      (_) async => Response(
        requestOptions: RequestOptions(path: 'pokemon/$pokemonName'),
        data: pokemonDetailJson,
        statusCode: 200,
      ),
    );

    // Act
    final result = await repository.getPokemonDetail(pokemonName);

    // Assert
    expect(result, isA<PokemonDetail>());
    expect(result.name, pokemonName);
    expect(result.types.first, 'grass');
    verify(() => mockDio.get('pokemon/$pokemonName')).called(1);
  });

  test('debería lanzar una excepción cuando la llamada a la API falla', () async {
    // Arrange
    when(() => mockDio.get(any())).thenThrow(
      DioException(
        requestOptions: RequestOptions(path: 'pokemon/$pokemonName'),
        response: Response(
          requestOptions: RequestOptions(path: 'pokemon/$pokemonName'),
          statusCode: 404,
        ),
      ),
    );

    // Act
    final call = repository.getPokemonDetail(pokemonName);

    // Assert
    expect(() => call, throwsA(isA<Exception>()));
  });
}
