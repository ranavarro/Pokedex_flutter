import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail_dto.freezed.dart';
part 'pokemon_detail_dto.g.dart';

@freezed
class PokemonDetailDto with _$PokemonDetailDto {
  const factory PokemonDetailDto({
    required List<AbilityElement> abilities,
    required int height,
    required int id,
    required List<MoveElement> moves,
    required String name,
    required Sprites sprites,
    required List<StatElement> stats,
    required List<TypeElement> types,
    required int weight,
  }) = _PokemonDetailDto;

  factory PokemonDetailDto.fromJson(Map<String, dynamic> json) => _$PokemonDetailDtoFromJson(json);
}

@freezed
class AbilityElement with _$AbilityElement {
  const factory AbilityElement({
    required Species ability,
    @JsonKey(name: 'is_hidden') required bool isHidden,
    required int slot,
  }) = _AbilityElement;

  factory AbilityElement.fromJson(Map<String, dynamic> json) => _$AbilityElementFromJson(json);
}

@freezed
class Species with _$Species {
  const factory Species({
    required String name,
    required String url,
  }) = _Species;

  factory Species.fromJson(Map<String, dynamic> json) => _$SpeciesFromJson(json);
}

@freezed
class MoveElement with _$MoveElement {
  const factory MoveElement({
    required Species move,
  }) = _MoveElement;

  factory MoveElement.fromJson(Map<String, dynamic> json) => _$MoveElementFromJson(json);
}

@freezed
class Sprites with _$Sprites {
  const factory Sprites({
    @JsonKey(name: 'other') Other? other,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) => _$SpritesFromJson(json);
}

@freezed
class Other with _$Other {
  const factory Other({
    @JsonKey(name: 'official-artwork') OfficialArtwork? officialArtwork,
  }) = _Other;

  factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);
}

@freezed
class OfficialArtwork with _$OfficialArtwork {
  const factory OfficialArtwork({
    @JsonKey(name: 'front_default') String? frontDefault,
  }) = _OfficialArtwork;

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) => _$OfficialArtworkFromJson(json);
}

@freezed
class StatElement with _$StatElement {
  const factory StatElement({
    @JsonKey(name: 'base_stat') required int baseStat,
    required int effort,
    required Species stat,
  }) = _StatElement;

  factory StatElement.fromJson(Map<String, dynamic> json) => _$StatElementFromJson(json);
}

@freezed
class TypeElement with _$TypeElement {
  const factory TypeElement({
    required int slot,
    required Species type,
  }) = _TypeElement;

  factory TypeElement.fromJson(Map<String, dynamic> json) => _$TypeElementFromJson(json);
}
