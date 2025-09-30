// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonRepositoryHash() => r'6d44ee15c8ea0c16b9fc9066f47dd1e1cbe92c00';

/// See also [pokemonRepository].
@ProviderFor(pokemonRepository)
final pokemonRepositoryProvider =
    AutoDisposeProvider<PokemonRepository>.internal(
  pokemonRepository,
  name: r'pokemonRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pokemonRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PokemonRepositoryRef = AutoDisposeProviderRef<PokemonRepository>;
String _$pokemonsHash() => r'6b55109c1e64eed4aee0d925407535babff9edcc';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [pokemons].
@ProviderFor(pokemons)
const pokemonsProvider = PokemonsFamily();

/// See also [pokemons].
class PokemonsFamily extends Family<AsyncValue<List<Pokemon>>> {
  /// See also [pokemons].
  const PokemonsFamily();

  /// See also [pokemons].
  PokemonsProvider call({
    required int page,
  }) {
    return PokemonsProvider(
      page: page,
    );
  }

  @override
  PokemonsProvider getProviderOverride(
    covariant PokemonsProvider provider,
  ) {
    return call(
      page: provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pokemonsProvider';
}

/// See also [pokemons].
class PokemonsProvider extends AutoDisposeFutureProvider<List<Pokemon>> {
  /// See also [pokemons].
  PokemonsProvider({
    required int page,
  }) : this._internal(
          (ref) => pokemons(
            ref as PokemonsRef,
            page: page,
          ),
          from: pokemonsProvider,
          name: r'pokemonsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonsHash,
          dependencies: PokemonsFamily._dependencies,
          allTransitiveDependencies: PokemonsFamily._allTransitiveDependencies,
          page: page,
        );

  PokemonsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<List<Pokemon>> Function(PokemonsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PokemonsProvider._internal(
        (ref) => create(ref as PokemonsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Pokemon>> createElement() {
    return _PokemonsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonsProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PokemonsRef on AutoDisposeFutureProviderRef<List<Pokemon>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _PokemonsProviderElement
    extends AutoDisposeFutureProviderElement<List<Pokemon>> with PokemonsRef {
  _PokemonsProviderElement(super.provider);

  @override
  int get page => (origin as PokemonsProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
