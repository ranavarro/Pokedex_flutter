// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonDetail {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError; // In decimetres
  int get weight => throw _privateConstructorUsedError; // In hectograms
  List<String> get types => throw _privateConstructorUsedError;
  List<Stat> get stats => throw _privateConstructorUsedError;
  List<String> get abilities => throw _privateConstructorUsedError;

  /// Create a copy of PokemonDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonDetailCopyWith<PokemonDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailCopyWith<$Res> {
  factory $PokemonDetailCopyWith(
          PokemonDetail value, $Res Function(PokemonDetail) then) =
      _$PokemonDetailCopyWithImpl<$Res, PokemonDetail>;
  @useResult
  $Res call(
      {int id,
      String name,
      String imageUrl,
      int height,
      int weight,
      List<String> types,
      List<Stat> stats,
      List<String> abilities});
}

/// @nodoc
class _$PokemonDetailCopyWithImpl<$Res, $Val extends PokemonDetail>
    implements $PokemonDetailCopyWith<$Res> {
  _$PokemonDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? stats = null,
    Object? abilities = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stat>,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonDetailImplCopyWith<$Res>
    implements $PokemonDetailCopyWith<$Res> {
  factory _$$PokemonDetailImplCopyWith(
          _$PokemonDetailImpl value, $Res Function(_$PokemonDetailImpl) then) =
      __$$PokemonDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String imageUrl,
      int height,
      int weight,
      List<String> types,
      List<Stat> stats,
      List<String> abilities});
}

/// @nodoc
class __$$PokemonDetailImplCopyWithImpl<$Res>
    extends _$PokemonDetailCopyWithImpl<$Res, _$PokemonDetailImpl>
    implements _$$PokemonDetailImplCopyWith<$Res> {
  __$$PokemonDetailImplCopyWithImpl(
      _$PokemonDetailImpl _value, $Res Function(_$PokemonDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? stats = null,
    Object? abilities = null,
  }) {
    return _then(_$PokemonDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stat>,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$PokemonDetailImpl implements _PokemonDetail {
  const _$PokemonDetailImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.height,
      required this.weight,
      required final List<String> types,
      required final List<Stat> stats,
      required final List<String> abilities})
      : _types = types,
        _stats = stats,
        _abilities = abilities;

  @override
  final int id;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final int height;
// In decimetres
  @override
  final int weight;
// In hectograms
  final List<String> _types;
// In hectograms
  @override
  List<String> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<Stat> _stats;
  @override
  List<Stat> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  final List<String> _abilities;
  @override
  List<String> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  String toString() {
    return 'PokemonDetail(id: $id, name: $name, imageUrl: $imageUrl, height: $height, weight: $weight, types: $types, stats: $stats, abilities: $abilities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      imageUrl,
      height,
      weight,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_stats),
      const DeepCollectionEquality().hash(_abilities));

  /// Create a copy of PokemonDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailImplCopyWith<_$PokemonDetailImpl> get copyWith =>
      __$$PokemonDetailImplCopyWithImpl<_$PokemonDetailImpl>(this, _$identity);
}

abstract class _PokemonDetail implements PokemonDetail {
  const factory _PokemonDetail(
      {required final int id,
      required final String name,
      required final String imageUrl,
      required final int height,
      required final int weight,
      required final List<String> types,
      required final List<Stat> stats,
      required final List<String> abilities}) = _$PokemonDetailImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  int get height; // In decimetres
  @override
  int get weight; // In hectograms
  @override
  List<String> get types;
  @override
  List<Stat> get stats;
  @override
  List<String> get abilities;

  /// Create a copy of PokemonDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonDetailImplCopyWith<_$PokemonDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Stat {
  String get name => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  /// Create a copy of Stat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatCopyWith<Stat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatCopyWith<$Res> {
  factory $StatCopyWith(Stat value, $Res Function(Stat) then) =
      _$StatCopyWithImpl<$Res, Stat>;
  @useResult
  $Res call({String name, int value});
}

/// @nodoc
class _$StatCopyWithImpl<$Res, $Val extends Stat>
    implements $StatCopyWith<$Res> {
  _$StatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Stat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatImplCopyWith<$Res> implements $StatCopyWith<$Res> {
  factory _$$StatImplCopyWith(
          _$StatImpl value, $Res Function(_$StatImpl) then) =
      __$$StatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int value});
}

/// @nodoc
class __$$StatImplCopyWithImpl<$Res>
    extends _$StatCopyWithImpl<$Res, _$StatImpl>
    implements _$$StatImplCopyWith<$Res> {
  __$$StatImplCopyWithImpl(_$StatImpl _value, $Res Function(_$StatImpl) _then)
      : super(_value, _then);

  /// Create a copy of Stat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$StatImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StatImpl implements _Stat {
  const _$StatImpl({required this.name, required this.value});

  @override
  final String name;
  @override
  final int value;

  @override
  String toString() {
    return 'Stat(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  /// Create a copy of Stat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatImplCopyWith<_$StatImpl> get copyWith =>
      __$$StatImplCopyWithImpl<_$StatImpl>(this, _$identity);
}

abstract class _Stat implements Stat {
  const factory _Stat({required final String name, required final int value}) =
      _$StatImpl;

  @override
  String get name;
  @override
  int get value;

  /// Create a copy of Stat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatImplCopyWith<_$StatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
