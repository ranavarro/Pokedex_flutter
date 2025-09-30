// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDetailDtoImpl _$$PokemonDetailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonDetailDtoImpl(
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => AbilityElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: (json['height'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      moves: (json['moves'] as List<dynamic>)
          .map((e) => MoveElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => StatElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>)
          .map((e) => TypeElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: (json['weight'] as num).toInt(),
    );

Map<String, dynamic> _$$PokemonDetailDtoImplToJson(
        _$PokemonDetailDtoImpl instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'height': instance.height,
      'id': instance.id,
      'moves': instance.moves,
      'name': instance.name,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };

_$AbilityElementImpl _$$AbilityElementImplFromJson(Map<String, dynamic> json) =>
    _$AbilityElementImpl(
      ability: Species.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['is_hidden'] as bool,
      slot: (json['slot'] as num).toInt(),
    );

Map<String, dynamic> _$$AbilityElementImplToJson(
        _$AbilityElementImpl instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
    };

_$SpeciesImpl _$$SpeciesImplFromJson(Map<String, dynamic> json) =>
    _$SpeciesImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$SpeciesImplToJson(_$SpeciesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$MoveElementImpl _$$MoveElementImplFromJson(Map<String, dynamic> json) =>
    _$MoveElementImpl(
      move: Species.fromJson(json['move'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MoveElementImplToJson(_$MoveElementImpl instance) =>
    <String, dynamic>{
      'move': instance.move,
    };

_$SpritesImpl _$$SpritesImplFromJson(Map<String, dynamic> json) =>
    _$SpritesImpl(
      other: json['other'] == null
          ? null
          : Other.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpritesImplToJson(_$SpritesImpl instance) =>
    <String, dynamic>{
      'other': instance.other,
    };

_$OtherImpl _$$OtherImplFromJson(Map<String, dynamic> json) => _$OtherImpl(
      officialArtwork: json['official-artwork'] == null
          ? null
          : OfficialArtwork.fromJson(
              json['official-artwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OtherImplToJson(_$OtherImpl instance) =>
    <String, dynamic>{
      'official-artwork': instance.officialArtwork,
    };

_$OfficialArtworkImpl _$$OfficialArtworkImplFromJson(
        Map<String, dynamic> json) =>
    _$OfficialArtworkImpl(
      frontDefault: json['front_default'] as String?,
    );

Map<String, dynamic> _$$OfficialArtworkImplToJson(
        _$OfficialArtworkImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

_$StatElementImpl _$$StatElementImplFromJson(Map<String, dynamic> json) =>
    _$StatElementImpl(
      baseStat: (json['base_stat'] as num).toInt(),
      effort: (json['effort'] as num).toInt(),
      stat: Species.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatElementImplToJson(_$StatElementImpl instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

_$TypeElementImpl _$$TypeElementImplFromJson(Map<String, dynamic> json) =>
    _$TypeElementImpl(
      slot: (json['slot'] as num).toInt(),
      type: Species.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TypeElementImplToJson(_$TypeElementImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
