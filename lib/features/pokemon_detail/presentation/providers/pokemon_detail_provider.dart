import 'package:pokedex_app/core/network/dio_client.dart';
import 'package:pokedex_app/features/pokemon_detail/data/repositories/pokemon_detail_repository_impl.dart';
import 'package:pokedex_app/features/pokemon_detail/domain/entities/pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon_detail/domain/repositories/pokemon_detail_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_detail_provider.g.dart';

@riverpod
PokemonDetailRepository pokemonDetailRepository(PokemonDetailRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  return PokemonDetailRepositoryImpl(dio);
}

@riverpod
Future<PokemonDetail> pokemonDetail(PokemonDetailRef ref, String pokemonName) {
  final repository = ref.watch(pokemonDetailRepositoryProvider);
  return repository.getPokemonDetail(pokemonName);
}
