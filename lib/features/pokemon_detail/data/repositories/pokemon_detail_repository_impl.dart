import 'package:dio/dio.dart';
import 'package:pokedex_app/features/pokemon_detail/data/models/pokemon_detail_dto.dart';
import 'package:pokedex_app/features/pokemon_detail/domain/entities/pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon_detail/domain/repositories/pokemon_detail_repository.dart';

class PokemonDetailRepositoryImpl implements PokemonDetailRepository {
  final Dio _dio;

  PokemonDetailRepositoryImpl(this._dio);

  @override
  Future<PokemonDetail> getPokemonDetail(String name) async {
    try {
      final response = await _dio.get('pokemon/$name');
      final dto = PokemonDetailDto.fromJson(response.data);

      return PokemonDetail(
        id: dto.id,
        name: dto.name,
        imageUrl: dto.sprites.other?.officialArtwork?.frontDefault ?? '',
        height: dto.height,
        weight: dto.weight,
        types: dto.types.map((t) => t.type.name).toList(),
        stats: dto.stats.map((s) => Stat(name: s.stat.name, value: s.baseStat)).toList(),
        abilities: dto.abilities.map((a) => a.ability.name).toList(),
        moves: dto.moves.map((m) => m.move.name).toList(),
      );
    } on DioException catch (e) {
      throw Exception('Failed to load pokemon detail: $e');
    }
  }
}
