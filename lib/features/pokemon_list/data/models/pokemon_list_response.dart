import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_response.freezed.dart';
part 'pokemon_list_response.g.dart';

@freezed
class PokemonListResponse with _$PokemonListResponse {
  const factory PokemonListResponse({
    required int count,
    String? next,
    String? previous,
    required List<PokemonResult> results,
  }) = _PokemonListResponse;

  factory PokemonListResponse.fromJson(Map<String, dynamic> json) => _$PokemonListResponseFromJson(json);
}

@freezed
class PokemonResult with _$PokemonResult {
  const factory PokemonResult({
    required String name,
    required String url,
  }) = _PokemonResult;

  factory PokemonResult.fromJson(Map<String, dynamic> json) => _$PokemonResultFromJson(json);
}
