import 'package:pokedex_app/features/pokemon_list/domain/entities/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> getPokemons({int offset = 0, int limit = 20});
}
