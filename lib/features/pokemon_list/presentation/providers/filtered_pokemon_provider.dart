import 'package:pokedex_app/features/pokemon_detail/domain/entities/pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/notifiers/pokemon_list_notifier.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/providers/filter_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filtered_pokemon_provider.g.dart';

// Provider ahora es síncrono y devuelve una lista de PokemonDetail
@riverpod
List<PokemonDetail> filteredPokemonList(FilteredPokemonListRef ref) {
  // Observa el estado de la lista principal
  final listStateAsync = ref.watch(pokemonListNotifierProvider);
  // Observa el estado de los filtros
  final filter = ref.watch(pokemonFilterNotifierProvider);

  // Si la lista principal está cargando o tiene error, devolvemos una lista vacía
  final allPokemons = listStateAsync.value?.pokemons ?? [];

  // Aplica el filtro de búsqueda por nombre
  var filteredPokemons = allPokemons.where((p) {
    return p.name.toLowerCase().contains(filter.query.toLowerCase());
  }).toList();

  // Aplica el filtro de tipo (ahora es instantáneo)
  if (filter.type != null) {
    filteredPokemons = filteredPokemons.where((p) {
      return p.types.contains(filter.type);
    }).toList();
  }

  return filteredPokemons;
}
