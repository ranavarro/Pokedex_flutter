import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_provider.g.dart';

@immutable
class PokemonFilter {
  final String query;
  final String? type;

  const PokemonFilter({this.query = '', this.type});

  PokemonFilter copyWith({String? query, String? type, bool clearType = false}) {
    return PokemonFilter(
      query: query ?? this.query,
      type: clearType ? null : type ?? this.type,
    );
  }
}

@riverpod
class PokemonFilterNotifier extends _$PokemonFilterNotifier {
  @override
  PokemonFilter build() {
    return const PokemonFilter();
  }

  void setQuery(String query) {
    state = state.copyWith(query: query);
  }

  void setType(String? type) {
    state = state.copyWith(type: type);
  }

  void clearFilters() {
    state = state.copyWith(query: '', clearType: true);
  }
}
