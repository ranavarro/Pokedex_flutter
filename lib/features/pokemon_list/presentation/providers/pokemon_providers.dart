import 'package:pokedex_app/core/network/dio_client.dart';
import 'package:pokedex_app/features/pokemon_list/data/repositories/pokemon_repository_impl.dart';
import 'package:pokedex_app/features/pokemon_list/domain/entities/pokemon.dart';
import 'package:pokedex_app/features/pokemon_list/domain/repositories/pokemon_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_providers.g.dart';

// Provider para el Repositorio
@riverpod
PokemonRepository pokemonRepository(PokemonRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  return PokemonRepositoryImpl(dio);
}

// Provider para obtener la lista de Pokémon (con paginación)
@riverpod
Future<List<Pokemon>> pokemons(PokemonsRef ref, {required int page}) async {
  final pokemonRepository = ref.watch(pokemonRepositoryProvider);
  final offset = page * 20;
  return pokemonRepository.getPokemons(offset: offset, limit: 20);
}
