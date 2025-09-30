import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required String name,
    required String url,
  }) = _Pokemon;

  const Pokemon._();

  // Lógica de negocio, por ejemplo, para obtener el ID desde la URL
  String get id {
    final segments = Uri.parse(url).pathSegments;
    return segments[segments.length - 2];
  }

  String get imageUrl {
    return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';
  }
}
