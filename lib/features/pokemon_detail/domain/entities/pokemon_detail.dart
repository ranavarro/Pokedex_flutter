import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail.freezed.dart';

@freezed
class PokemonDetail with _$PokemonDetail {
  const factory PokemonDetail({
    required int id,
    required String name,
    required String imageUrl,
    required int height,
    required int weight,
    required List<String> types,
    required List<Stat> stats,
    required List<String> abilities,
    required List<String> moves,
  }) = _PokemonDetail;

  // Constructor privado para métodos
  const PokemonDetail._();

  String get formattedId => '#${id.toString().padLeft(3, '0')}';
}

@freezed
class Stat with _$Stat {
  const factory Stat({
    required String name,
    required int value,
  }) = _Stat;
}
