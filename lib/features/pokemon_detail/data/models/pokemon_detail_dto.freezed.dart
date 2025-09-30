// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonDetailDto _$PokemonDetailDtoFromJson(Map<String, dynamic> json) {
  return _PokemonDetailDto.fromJson(json);
}

/// @nodoc
mixin _$PokemonDetailDto {
  List<AbilityElement> get abilities => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  List<MoveElement> get moves => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Sprites get sprites => throw _privateConstructorUsedError;
  List<StatElement> get stats => throw _privateConstructorUsedError;
  List<TypeElement> get types => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

  /// Serializes this PokemonDetailDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonDetailDtoCopyWith<PokemonDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailDtoCopyWith<$Res> {
  factory $PokemonDetailDtoCopyWith(
          PokemonDetailDto value, $Res Function(PokemonDetailDto) then) =
      _$PokemonDetailDtoCopyWithImpl<$Res, PokemonDetailDto>;
  @useResult
  $Res call(
      {List<AbilityElement> abilities,
      int height,
      int id,
      List<MoveElement> moves,
      String name,
      Sprites sprites,
      List<StatElement> stats,
      List<TypeElement> types,
      int weight});

  $SpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonDetailDtoCopyWithImpl<$Res, $Val extends PokemonDetailDto>
    implements $PokemonDetailDtoCopyWith<$Res> {
  _$PokemonDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abilities = null,
    Object? height = null,
    Object? id = null,
    Object? moves = null,
    Object? name = null,
    Object? sprites = null,
    Object? stats = null,
    Object? types = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityElement>,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<MoveElement>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatElement>,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeElement>,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PokemonDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res> get sprites {
    return $SpritesCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonDetailDtoImplCopyWith<$Res>
    implements $PokemonDetailDtoCopyWith<$Res> {
  factory _$$PokemonDetailDtoImplCopyWith(_$PokemonDetailDtoImpl value,
          $Res Function(_$PokemonDetailDtoImpl) then) =
      __$$PokemonDetailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AbilityElement> abilities,
      int height,
      int id,
      List<MoveElement> moves,
      String name,
      Sprites sprites,
      List<StatElement> stats,
      List<TypeElement> types,
      int weight});

  @override
  $SpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$PokemonDetailDtoImplCopyWithImpl<$Res>
    extends _$PokemonDetailDtoCopyWithImpl<$Res, _$PokemonDetailDtoImpl>
    implements _$$PokemonDetailDtoImplCopyWith<$Res> {
  __$$PokemonDetailDtoImplCopyWithImpl(_$PokemonDetailDtoImpl _value,
      $Res Function(_$PokemonDetailDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abilities = null,
    Object? height = null,
    Object? id = null,
    Object? moves = null,
    Object? name = null,
    Object? sprites = null,
    Object? stats = null,
    Object? types = null,
    Object? weight = null,
  }) {
    return _then(_$PokemonDetailDtoImpl(
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityElement>,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      moves: null == moves
          ? _value._moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<MoveElement>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatElement>,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeElement>,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDetailDtoImpl implements _PokemonDetailDto {
  const _$PokemonDetailDtoImpl(
      {required final List<AbilityElement> abilities,
      required this.height,
      required this.id,
      required final List<MoveElement> moves,
      required this.name,
      required this.sprites,
      required final List<StatElement> stats,
      required final List<TypeElement> types,
      required this.weight})
      : _abilities = abilities,
        _moves = moves,
        _stats = stats,
        _types = types;

  factory _$PokemonDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDetailDtoImplFromJson(json);

  final List<AbilityElement> _abilities;
  @override
  List<AbilityElement> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  final int height;
  @override
  final int id;
  final List<MoveElement> _moves;
  @override
  List<MoveElement> get moves {
    if (_moves is EqualUnmodifiableListView) return _moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moves);
  }

  @override
  final String name;
  @override
  final Sprites sprites;
  final List<StatElement> _stats;
  @override
  List<StatElement> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  final List<TypeElement> _types;
  @override
  List<TypeElement> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final int weight;

  @override
  String toString() {
    return 'PokemonDetailDto(abilities: $abilities, height: $height, id: $id, moves: $moves, name: $name, sprites: $sprites, stats: $stats, types: $types, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._moves, _moves) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_abilities),
      height,
      id,
      const DeepCollectionEquality().hash(_moves),
      name,
      sprites,
      const DeepCollectionEquality().hash(_stats),
      const DeepCollectionEquality().hash(_types),
      weight);

  /// Create a copy of PokemonDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailDtoImplCopyWith<_$PokemonDetailDtoImpl> get copyWith =>
      __$$PokemonDetailDtoImplCopyWithImpl<_$PokemonDetailDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _PokemonDetailDto implements PokemonDetailDto {
  const factory _PokemonDetailDto(
      {required final List<AbilityElement> abilities,
      required final int height,
      required final int id,
      required final List<MoveElement> moves,
      required final String name,
      required final Sprites sprites,
      required final List<StatElement> stats,
      required final List<TypeElement> types,
      required final int weight}) = _$PokemonDetailDtoImpl;

  factory _PokemonDetailDto.fromJson(Map<String, dynamic> json) =
      _$PokemonDetailDtoImpl.fromJson;

  @override
  List<AbilityElement> get abilities;
  @override
  int get height;
  @override
  int get id;
  @override
  List<MoveElement> get moves;
  @override
  String get name;
  @override
  Sprites get sprites;
  @override
  List<StatElement> get stats;
  @override
  List<TypeElement> get types;
  @override
  int get weight;

  /// Create a copy of PokemonDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonDetailDtoImplCopyWith<_$PokemonDetailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AbilityElement _$AbilityElementFromJson(Map<String, dynamic> json) {
  return _AbilityElement.fromJson(json);
}

/// @nodoc
mixin _$AbilityElement {
  Species get ability => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hidden')
  bool get isHidden => throw _privateConstructorUsedError;
  int get slot => throw _privateConstructorUsedError;

  /// Serializes this AbilityElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AbilityElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AbilityElementCopyWith<AbilityElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityElementCopyWith<$Res> {
  factory $AbilityElementCopyWith(
          AbilityElement value, $Res Function(AbilityElement) then) =
      _$AbilityElementCopyWithImpl<$Res, AbilityElement>;
  @useResult
  $Res call(
      {Species ability, @JsonKey(name: 'is_hidden') bool isHidden, int slot});

  $SpeciesCopyWith<$Res> get ability;
}

/// @nodoc
class _$AbilityElementCopyWithImpl<$Res, $Val extends AbilityElement>
    implements $AbilityElementCopyWith<$Res> {
  _$AbilityElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AbilityElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
    Object? isHidden = null,
    Object? slot = null,
  }) {
    return _then(_value.copyWith(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as Species,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of AbilityElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get ability {
    return $SpeciesCopyWith<$Res>(_value.ability, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AbilityElementImplCopyWith<$Res>
    implements $AbilityElementCopyWith<$Res> {
  factory _$$AbilityElementImplCopyWith(_$AbilityElementImpl value,
          $Res Function(_$AbilityElementImpl) then) =
      __$$AbilityElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Species ability, @JsonKey(name: 'is_hidden') bool isHidden, int slot});

  @override
  $SpeciesCopyWith<$Res> get ability;
}

/// @nodoc
class __$$AbilityElementImplCopyWithImpl<$Res>
    extends _$AbilityElementCopyWithImpl<$Res, _$AbilityElementImpl>
    implements _$$AbilityElementImplCopyWith<$Res> {
  __$$AbilityElementImplCopyWithImpl(
      _$AbilityElementImpl _value, $Res Function(_$AbilityElementImpl) _then)
      : super(_value, _then);

  /// Create a copy of AbilityElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
    Object? isHidden = null,
    Object? slot = null,
  }) {
    return _then(_$AbilityElementImpl(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as Species,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbilityElementImpl implements _AbilityElement {
  const _$AbilityElementImpl(
      {required this.ability,
      @JsonKey(name: 'is_hidden') required this.isHidden,
      required this.slot});

  factory _$AbilityElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbilityElementImplFromJson(json);

  @override
  final Species ability;
  @override
  @JsonKey(name: 'is_hidden')
  final bool isHidden;
  @override
  final int slot;

  @override
  String toString() {
    return 'AbilityElement(ability: $ability, isHidden: $isHidden, slot: $slot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilityElementImpl &&
            (identical(other.ability, ability) || other.ability == ability) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ability, isHidden, slot);

  /// Create a copy of AbilityElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilityElementImplCopyWith<_$AbilityElementImpl> get copyWith =>
      __$$AbilityElementImplCopyWithImpl<_$AbilityElementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbilityElementImplToJson(
      this,
    );
  }
}

abstract class _AbilityElement implements AbilityElement {
  const factory _AbilityElement(
      {required final Species ability,
      @JsonKey(name: 'is_hidden') required final bool isHidden,
      required final int slot}) = _$AbilityElementImpl;

  factory _AbilityElement.fromJson(Map<String, dynamic> json) =
      _$AbilityElementImpl.fromJson;

  @override
  Species get ability;
  @override
  @JsonKey(name: 'is_hidden')
  bool get isHidden;
  @override
  int get slot;

  /// Create a copy of AbilityElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AbilityElementImplCopyWith<_$AbilityElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Species _$SpeciesFromJson(Map<String, dynamic> json) {
  return _Species.fromJson(json);
}

/// @nodoc
mixin _$Species {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this Species to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Species
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpeciesCopyWith<Species> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesCopyWith<$Res> {
  factory $SpeciesCopyWith(Species value, $Res Function(Species) then) =
      _$SpeciesCopyWithImpl<$Res, Species>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$SpeciesCopyWithImpl<$Res, $Val extends Species>
    implements $SpeciesCopyWith<$Res> {
  _$SpeciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Species
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeciesImplCopyWith<$Res> implements $SpeciesCopyWith<$Res> {
  factory _$$SpeciesImplCopyWith(
          _$SpeciesImpl value, $Res Function(_$SpeciesImpl) then) =
      __$$SpeciesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$SpeciesImplCopyWithImpl<$Res>
    extends _$SpeciesCopyWithImpl<$Res, _$SpeciesImpl>
    implements _$$SpeciesImplCopyWith<$Res> {
  __$$SpeciesImplCopyWithImpl(
      _$SpeciesImpl _value, $Res Function(_$SpeciesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Species
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$SpeciesImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeciesImpl implements _Species {
  const _$SpeciesImpl({required this.name, required this.url});

  factory _$SpeciesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeciesImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'Species(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeciesImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of Species
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeciesImplCopyWith<_$SpeciesImpl> get copyWith =>
      __$$SpeciesImplCopyWithImpl<_$SpeciesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeciesImplToJson(
      this,
    );
  }
}

abstract class _Species implements Species {
  const factory _Species(
      {required final String name, required final String url}) = _$SpeciesImpl;

  factory _Species.fromJson(Map<String, dynamic> json) = _$SpeciesImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of Species
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpeciesImplCopyWith<_$SpeciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MoveElement _$MoveElementFromJson(Map<String, dynamic> json) {
  return _MoveElement.fromJson(json);
}

/// @nodoc
mixin _$MoveElement {
  Species get move => throw _privateConstructorUsedError;

  /// Serializes this MoveElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoveElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoveElementCopyWith<MoveElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveElementCopyWith<$Res> {
  factory $MoveElementCopyWith(
          MoveElement value, $Res Function(MoveElement) then) =
      _$MoveElementCopyWithImpl<$Res, MoveElement>;
  @useResult
  $Res call({Species move});

  $SpeciesCopyWith<$Res> get move;
}

/// @nodoc
class _$MoveElementCopyWithImpl<$Res, $Val extends MoveElement>
    implements $MoveElementCopyWith<$Res> {
  _$MoveElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoveElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
  }) {
    return _then(_value.copyWith(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as Species,
    ) as $Val);
  }

  /// Create a copy of MoveElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get move {
    return $SpeciesCopyWith<$Res>(_value.move, (value) {
      return _then(_value.copyWith(move: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MoveElementImplCopyWith<$Res>
    implements $MoveElementCopyWith<$Res> {
  factory _$$MoveElementImplCopyWith(
          _$MoveElementImpl value, $Res Function(_$MoveElementImpl) then) =
      __$$MoveElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Species move});

  @override
  $SpeciesCopyWith<$Res> get move;
}

/// @nodoc
class __$$MoveElementImplCopyWithImpl<$Res>
    extends _$MoveElementCopyWithImpl<$Res, _$MoveElementImpl>
    implements _$$MoveElementImplCopyWith<$Res> {
  __$$MoveElementImplCopyWithImpl(
      _$MoveElementImpl _value, $Res Function(_$MoveElementImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoveElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
  }) {
    return _then(_$MoveElementImpl(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as Species,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoveElementImpl implements _MoveElement {
  const _$MoveElementImpl({required this.move});

  factory _$MoveElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoveElementImplFromJson(json);

  @override
  final Species move;

  @override
  String toString() {
    return 'MoveElement(move: $move)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveElementImpl &&
            (identical(other.move, move) || other.move == move));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, move);

  /// Create a copy of MoveElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveElementImplCopyWith<_$MoveElementImpl> get copyWith =>
      __$$MoveElementImplCopyWithImpl<_$MoveElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoveElementImplToJson(
      this,
    );
  }
}

abstract class _MoveElement implements MoveElement {
  const factory _MoveElement({required final Species move}) = _$MoveElementImpl;

  factory _MoveElement.fromJson(Map<String, dynamic> json) =
      _$MoveElementImpl.fromJson;

  @override
  Species get move;

  /// Create a copy of MoveElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoveElementImplCopyWith<_$MoveElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sprites _$SpritesFromJson(Map<String, dynamic> json) {
  return _Sprites.fromJson(json);
}

/// @nodoc
mixin _$Sprites {
  @JsonKey(name: 'other')
  Other? get other => throw _privateConstructorUsedError;

  /// Serializes this Sprites to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sprites
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpritesCopyWith<Sprites> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpritesCopyWith<$Res> {
  factory $SpritesCopyWith(Sprites value, $Res Function(Sprites) then) =
      _$SpritesCopyWithImpl<$Res, Sprites>;
  @useResult
  $Res call({@JsonKey(name: 'other') Other? other});

  $OtherCopyWith<$Res>? get other;
}

/// @nodoc
class _$SpritesCopyWithImpl<$Res, $Val extends Sprites>
    implements $SpritesCopyWith<$Res> {
  _$SpritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sprites
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? other = freezed,
  }) {
    return _then(_value.copyWith(
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as Other?,
    ) as $Val);
  }

  /// Create a copy of Sprites
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OtherCopyWith<$Res>? get other {
    if (_value.other == null) {
      return null;
    }

    return $OtherCopyWith<$Res>(_value.other!, (value) {
      return _then(_value.copyWith(other: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpritesImplCopyWith<$Res> implements $SpritesCopyWith<$Res> {
  factory _$$SpritesImplCopyWith(
          _$SpritesImpl value, $Res Function(_$SpritesImpl) then) =
      __$$SpritesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'other') Other? other});

  @override
  $OtherCopyWith<$Res>? get other;
}

/// @nodoc
class __$$SpritesImplCopyWithImpl<$Res>
    extends _$SpritesCopyWithImpl<$Res, _$SpritesImpl>
    implements _$$SpritesImplCopyWith<$Res> {
  __$$SpritesImplCopyWithImpl(
      _$SpritesImpl _value, $Res Function(_$SpritesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sprites
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? other = freezed,
  }) {
    return _then(_$SpritesImpl(
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as Other?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpritesImpl implements _Sprites {
  const _$SpritesImpl({@JsonKey(name: 'other') this.other});

  factory _$SpritesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpritesImplFromJson(json);

  @override
  @JsonKey(name: 'other')
  final Other? other;

  @override
  String toString() {
    return 'Sprites(other: $other)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpritesImpl &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, other);

  /// Create a copy of Sprites
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpritesImplCopyWith<_$SpritesImpl> get copyWith =>
      __$$SpritesImplCopyWithImpl<_$SpritesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpritesImplToJson(
      this,
    );
  }
}

abstract class _Sprites implements Sprites {
  const factory _Sprites({@JsonKey(name: 'other') final Other? other}) =
      _$SpritesImpl;

  factory _Sprites.fromJson(Map<String, dynamic> json) = _$SpritesImpl.fromJson;

  @override
  @JsonKey(name: 'other')
  Other? get other;

  /// Create a copy of Sprites
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpritesImplCopyWith<_$SpritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Other _$OtherFromJson(Map<String, dynamic> json) {
  return _Other.fromJson(json);
}

/// @nodoc
mixin _$Other {
  @JsonKey(name: 'official-artwork')
  OfficialArtwork? get officialArtwork => throw _privateConstructorUsedError;

  /// Serializes this Other to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Other
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtherCopyWith<Other> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherCopyWith<$Res> {
  factory $OtherCopyWith(Other value, $Res Function(Other) then) =
      _$OtherCopyWithImpl<$Res, Other>;
  @useResult
  $Res call(
      {@JsonKey(name: 'official-artwork') OfficialArtwork? officialArtwork});

  $OfficialArtworkCopyWith<$Res>? get officialArtwork;
}

/// @nodoc
class _$OtherCopyWithImpl<$Res, $Val extends Other>
    implements $OtherCopyWith<$Res> {
  _$OtherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Other
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? officialArtwork = freezed,
  }) {
    return _then(_value.copyWith(
      officialArtwork: freezed == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as OfficialArtwork?,
    ) as $Val);
  }

  /// Create a copy of Other
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OfficialArtworkCopyWith<$Res>? get officialArtwork {
    if (_value.officialArtwork == null) {
      return null;
    }

    return $OfficialArtworkCopyWith<$Res>(_value.officialArtwork!, (value) {
      return _then(_value.copyWith(officialArtwork: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OtherImplCopyWith<$Res> implements $OtherCopyWith<$Res> {
  factory _$$OtherImplCopyWith(
          _$OtherImpl value, $Res Function(_$OtherImpl) then) =
      __$$OtherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'official-artwork') OfficialArtwork? officialArtwork});

  @override
  $OfficialArtworkCopyWith<$Res>? get officialArtwork;
}

/// @nodoc
class __$$OtherImplCopyWithImpl<$Res>
    extends _$OtherCopyWithImpl<$Res, _$OtherImpl>
    implements _$$OtherImplCopyWith<$Res> {
  __$$OtherImplCopyWithImpl(
      _$OtherImpl _value, $Res Function(_$OtherImpl) _then)
      : super(_value, _then);

  /// Create a copy of Other
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? officialArtwork = freezed,
  }) {
    return _then(_$OtherImpl(
      officialArtwork: freezed == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as OfficialArtwork?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherImpl implements _Other {
  const _$OtherImpl({@JsonKey(name: 'official-artwork') this.officialArtwork});

  factory _$OtherImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherImplFromJson(json);

  @override
  @JsonKey(name: 'official-artwork')
  final OfficialArtwork? officialArtwork;

  @override
  String toString() {
    return 'Other(officialArtwork: $officialArtwork)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherImpl &&
            (identical(other.officialArtwork, officialArtwork) ||
                other.officialArtwork == officialArtwork));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, officialArtwork);

  /// Create a copy of Other
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      __$$OtherImplCopyWithImpl<_$OtherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherImplToJson(
      this,
    );
  }
}

abstract class _Other implements Other {
  const factory _Other(
      {@JsonKey(name: 'official-artwork')
      final OfficialArtwork? officialArtwork}) = _$OtherImpl;

  factory _Other.fromJson(Map<String, dynamic> json) = _$OtherImpl.fromJson;

  @override
  @JsonKey(name: 'official-artwork')
  OfficialArtwork? get officialArtwork;

  /// Create a copy of Other
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OfficialArtwork _$OfficialArtworkFromJson(Map<String, dynamic> json) {
  return _OfficialArtwork.fromJson(json);
}

/// @nodoc
mixin _$OfficialArtwork {
  @JsonKey(name: 'front_default')
  String? get frontDefault => throw _privateConstructorUsedError;

  /// Serializes this OfficialArtwork to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfficialArtwork
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfficialArtworkCopyWith<OfficialArtwork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficialArtworkCopyWith<$Res> {
  factory $OfficialArtworkCopyWith(
          OfficialArtwork value, $Res Function(OfficialArtwork) then) =
      _$OfficialArtworkCopyWithImpl<$Res, OfficialArtwork>;
  @useResult
  $Res call({@JsonKey(name: 'front_default') String? frontDefault});
}

/// @nodoc
class _$OfficialArtworkCopyWithImpl<$Res, $Val extends OfficialArtwork>
    implements $OfficialArtworkCopyWith<$Res> {
  _$OfficialArtworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfficialArtwork
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfficialArtworkImplCopyWith<$Res>
    implements $OfficialArtworkCopyWith<$Res> {
  factory _$$OfficialArtworkImplCopyWith(_$OfficialArtworkImpl value,
          $Res Function(_$OfficialArtworkImpl) then) =
      __$$OfficialArtworkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'front_default') String? frontDefault});
}

/// @nodoc
class __$$OfficialArtworkImplCopyWithImpl<$Res>
    extends _$OfficialArtworkCopyWithImpl<$Res, _$OfficialArtworkImpl>
    implements _$$OfficialArtworkImplCopyWith<$Res> {
  __$$OfficialArtworkImplCopyWithImpl(
      _$OfficialArtworkImpl _value, $Res Function(_$OfficialArtworkImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfficialArtwork
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_$OfficialArtworkImpl(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfficialArtworkImpl implements _OfficialArtwork {
  const _$OfficialArtworkImpl(
      {@JsonKey(name: 'front_default') this.frontDefault});

  factory _$OfficialArtworkImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfficialArtworkImplFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String? frontDefault;

  @override
  String toString() {
    return 'OfficialArtwork(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfficialArtworkImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  /// Create a copy of OfficialArtwork
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfficialArtworkImplCopyWith<_$OfficialArtworkImpl> get copyWith =>
      __$$OfficialArtworkImplCopyWithImpl<_$OfficialArtworkImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfficialArtworkImplToJson(
      this,
    );
  }
}

abstract class _OfficialArtwork implements OfficialArtwork {
  const factory _OfficialArtwork(
          {@JsonKey(name: 'front_default') final String? frontDefault}) =
      _$OfficialArtworkImpl;

  factory _OfficialArtwork.fromJson(Map<String, dynamic> json) =
      _$OfficialArtworkImpl.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String? get frontDefault;

  /// Create a copy of OfficialArtwork
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfficialArtworkImplCopyWith<_$OfficialArtworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatElement _$StatElementFromJson(Map<String, dynamic> json) {
  return _StatElement.fromJson(json);
}

/// @nodoc
mixin _$StatElement {
  @JsonKey(name: 'base_stat')
  int get baseStat => throw _privateConstructorUsedError;
  int get effort => throw _privateConstructorUsedError;
  Species get stat => throw _privateConstructorUsedError;

  /// Serializes this StatElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatElementCopyWith<StatElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatElementCopyWith<$Res> {
  factory $StatElementCopyWith(
          StatElement value, $Res Function(StatElement) then) =
      _$StatElementCopyWithImpl<$Res, StatElement>;
  @useResult
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat, int effort, Species stat});

  $SpeciesCopyWith<$Res> get stat;
}

/// @nodoc
class _$StatElementCopyWithImpl<$Res, $Val extends StatElement>
    implements $StatElementCopyWith<$Res> {
  _$StatElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Species,
    ) as $Val);
  }

  /// Create a copy of StatElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get stat {
    return $SpeciesCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatElementImplCopyWith<$Res>
    implements $StatElementCopyWith<$Res> {
  factory _$$StatElementImplCopyWith(
          _$StatElementImpl value, $Res Function(_$StatElementImpl) then) =
      __$$StatElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat, int effort, Species stat});

  @override
  $SpeciesCopyWith<$Res> get stat;
}

/// @nodoc
class __$$StatElementImplCopyWithImpl<$Res>
    extends _$StatElementCopyWithImpl<$Res, _$StatElementImpl>
    implements _$$StatElementImplCopyWith<$Res> {
  __$$StatElementImplCopyWithImpl(
      _$StatElementImpl _value, $Res Function(_$StatElementImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? stat = null,
  }) {
    return _then(_$StatElementImpl(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Species,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatElementImpl implements _StatElement {
  const _$StatElementImpl(
      {@JsonKey(name: 'base_stat') required this.baseStat,
      required this.effort,
      required this.stat});

  factory _$StatElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatElementImplFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;
  @override
  final int effort;
  @override
  final Species stat;

  @override
  String toString() {
    return 'StatElement(baseStat: $baseStat, effort: $effort, stat: $stat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatElementImpl &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.effort, effort) || other.effort == effort) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, effort, stat);

  /// Create a copy of StatElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatElementImplCopyWith<_$StatElementImpl> get copyWith =>
      __$$StatElementImplCopyWithImpl<_$StatElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatElementImplToJson(
      this,
    );
  }
}

abstract class _StatElement implements StatElement {
  const factory _StatElement(
      {@JsonKey(name: 'base_stat') required final int baseStat,
      required final int effort,
      required final Species stat}) = _$StatElementImpl;

  factory _StatElement.fromJson(Map<String, dynamic> json) =
      _$StatElementImpl.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @override
  int get effort;
  @override
  Species get stat;

  /// Create a copy of StatElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatElementImplCopyWith<_$StatElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeElement _$TypeElementFromJson(Map<String, dynamic> json) {
  return _TypeElement.fromJson(json);
}

/// @nodoc
mixin _$TypeElement {
  int get slot => throw _privateConstructorUsedError;
  Species get type => throw _privateConstructorUsedError;

  /// Serializes this TypeElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TypeElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TypeElementCopyWith<TypeElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeElementCopyWith<$Res> {
  factory $TypeElementCopyWith(
          TypeElement value, $Res Function(TypeElement) then) =
      _$TypeElementCopyWithImpl<$Res, TypeElement>;
  @useResult
  $Res call({int slot, Species type});

  $SpeciesCopyWith<$Res> get type;
}

/// @nodoc
class _$TypeElementCopyWithImpl<$Res, $Val extends TypeElement>
    implements $TypeElementCopyWith<$Res> {
  _$TypeElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypeElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Species,
    ) as $Val);
  }

  /// Create a copy of TypeElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get type {
    return $SpeciesCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TypeElementImplCopyWith<$Res>
    implements $TypeElementCopyWith<$Res> {
  factory _$$TypeElementImplCopyWith(
          _$TypeElementImpl value, $Res Function(_$TypeElementImpl) then) =
      __$$TypeElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, Species type});

  @override
  $SpeciesCopyWith<$Res> get type;
}

/// @nodoc
class __$$TypeElementImplCopyWithImpl<$Res>
    extends _$TypeElementCopyWithImpl<$Res, _$TypeElementImpl>
    implements _$$TypeElementImplCopyWith<$Res> {
  __$$TypeElementImplCopyWithImpl(
      _$TypeElementImpl _value, $Res Function(_$TypeElementImpl) _then)
      : super(_value, _then);

  /// Create a copy of TypeElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$TypeElementImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Species,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeElementImpl implements _TypeElement {
  const _$TypeElementImpl({required this.slot, required this.type});

  factory _$TypeElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeElementImplFromJson(json);

  @override
  final int slot;
  @override
  final Species type;

  @override
  String toString() {
    return 'TypeElement(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeElementImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  /// Create a copy of TypeElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeElementImplCopyWith<_$TypeElementImpl> get copyWith =>
      __$$TypeElementImplCopyWithImpl<_$TypeElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeElementImplToJson(
      this,
    );
  }
}

abstract class _TypeElement implements TypeElement {
  const factory _TypeElement(
      {required final int slot,
      required final Species type}) = _$TypeElementImpl;

  factory _TypeElement.fromJson(Map<String, dynamic> json) =
      _$TypeElementImpl.fromJson;

  @override
  int get slot;
  @override
  Species get type;

  /// Create a copy of TypeElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypeElementImplCopyWith<_$TypeElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
