import 'package:dio/dio.dart';
import 'package:pokedex_app/features/pokemon_list/data/models/pokemon_list_response.dart';
import 'package:pokedex_app/features/pokemon_list/domain/entities/pokemon.dart';
import 'package:pokedex_app/features/pokemon_list/domain/repositories/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final Dio _dio;

  PokemonRepositoryImpl(this._dio);

  @override
  Future<List<Pokemon>> getPokemons({int offset = 0, int limit = 20}) async {
    try {
      final response = await _dio.get(
        'pokemon',
        queryParameters: {'offset': offset, 'limit': limit},
      );
      final pokemonResponse = PokemonListResponse.fromJson(response.data);
      // Mapeo de DTO (PokemonResult) a Entidad de Dominio (Pokemon)
      return pokemonResponse.results.map((result) => Pokemon(name: result.name, url: result.url)).toList();
    } on DioException catch (e) {
      // Manejo de errores más robusto (e.g., lanzar excepciones personalizadas)
      throw Exception('Failed to load pokemons: $e');
    }
  }
}
