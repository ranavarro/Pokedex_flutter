import 'package:pokedex_app/features/pokemon_detail/domain/entities/pokemon_detail.dart';

abstract class PokemonDetailRepository {
  Future<PokemonDetail> getPokemonDetail(String name);
}
