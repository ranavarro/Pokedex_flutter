// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonListResponse _$PokemonListResponseFromJson(Map<String, dynamic> json) {
  return _PokemonListResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonListResponse {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PokemonResult> get results => throw _privateConstructorUsedError;

  /// Serializes this PokemonListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonListResponseCopyWith<PokemonListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListResponseCopyWith<$Res> {
  factory $PokemonListResponseCopyWith(
          PokemonListResponse value, $Res Function(PokemonListResponse) then) =
      _$PokemonListResponseCopyWithImpl<$Res, PokemonListResponse>;
  @useResult
  $Res call(
      {int count, String? next, String? previous, List<PokemonResult> results});
}

/// @nodoc
class _$PokemonListResponseCopyWithImpl<$Res, $Val extends PokemonListResponse>
    implements $PokemonListResponseCopyWith<$Res> {
  _$PokemonListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonListResponseImplCopyWith<$Res>
    implements $PokemonListResponseCopyWith<$Res> {
  factory _$$PokemonListResponseImplCopyWith(_$PokemonListResponseImpl value,
          $Res Function(_$PokemonListResponseImpl) then) =
      __$$PokemonListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count, String? next, String? previous, List<PokemonResult> results});
}

/// @nodoc
class __$$PokemonListResponseImplCopyWithImpl<$Res>
    extends _$PokemonListResponseCopyWithImpl<$Res, _$PokemonListResponseImpl>
    implements _$$PokemonListResponseImplCopyWith<$Res> {
  __$$PokemonListResponseImplCopyWithImpl(_$PokemonListResponseImpl _value,
      $Res Function(_$PokemonListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$PokemonListResponseImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonListResponseImpl implements _PokemonListResponse {
  const _$PokemonListResponseImpl(
      {required this.count,
      this.next,
      this.previous,
      required final List<PokemonResult> results})
      : _results = results;

  factory _$PokemonListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonListResponseImplFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<PokemonResult> _results;
  @override
  List<PokemonResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PokemonListResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  /// Create a copy of PokemonListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListResponseImplCopyWith<_$PokemonListResponseImpl> get copyWith =>
      __$$PokemonListResponseImplCopyWithImpl<_$PokemonListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonListResponseImplToJson(
      this,
    );
  }
}

abstract class _PokemonListResponse implements PokemonListResponse {
  const factory _PokemonListResponse(
      {required final int count,
      final String? next,
      final String? previous,
      required final List<PokemonResult> results}) = _$PokemonListResponseImpl;

  factory _PokemonListResponse.fromJson(Map<String, dynamic> json) =
      _$PokemonListResponseImpl.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<PokemonResult> get results;

  /// Create a copy of PokemonListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonListResponseImplCopyWith<_$PokemonListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonResult _$PokemonResultFromJson(Map<String, dynamic> json) {
  return _PokemonResult.fromJson(json);
}

/// @nodoc
mixin _$PokemonResult {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PokemonResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonResultCopyWith<PokemonResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonResultCopyWith<$Res> {
  factory $PokemonResultCopyWith(
          PokemonResult value, $Res Function(PokemonResult) then) =
      _$PokemonResultCopyWithImpl<$Res, PokemonResult>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonResultCopyWithImpl<$Res, $Val extends PokemonResult>
    implements $PokemonResultCopyWith<$Res> {
  _$PokemonResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonResult
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
abstract class _$$PokemonResultImplCopyWith<$Res>
    implements $PokemonResultCopyWith<$Res> {
  factory _$$PokemonResultImplCopyWith(
          _$PokemonResultImpl value, $Res Function(_$PokemonResultImpl) then) =
      __$$PokemonResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonResultImplCopyWithImpl<$Res>
    extends _$PokemonResultCopyWithImpl<$Res, _$PokemonResultImpl>
    implements _$$PokemonResultImplCopyWith<$Res> {
  __$$PokemonResultImplCopyWithImpl(
      _$PokemonResultImpl _value, $Res Function(_$PokemonResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokemonResultImpl(
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
class _$PokemonResultImpl implements _PokemonResult {
  const _$PokemonResultImpl({required this.name, required this.url});

  factory _$PokemonResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonResultImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonResult(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonResultImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of PokemonResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonResultImplCopyWith<_$PokemonResultImpl> get copyWith =>
      __$$PokemonResultImplCopyWithImpl<_$PokemonResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonResultImplToJson(
      this,
    );
  }
}

abstract class _PokemonResult implements PokemonResult {
  const factory _PokemonResult(
      {required final String name,
      required final String url}) = _$PokemonResultImpl;

  factory _PokemonResult.fromJson(Map<String, dynamic> json) =
      _$PokemonResultImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of PokemonResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonResultImplCopyWith<_$PokemonResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
