// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Pokédex';

  @override
  String get pokemonListTitle => 'Pokédex';

  @override
  String get favoritesTitle => 'Favoritos';

  @override
  String get onboardingTitle1 => 'Todos los Pokémon en un solo lugar';

  @override
  String get onboardingSubtitle1 =>
      'Accede a un vasto catálogo de Pokémon de todas las generaciones.';

  @override
  String get onboardingTitle2 => 'Encuentra a tu favorito';

  @override
  String get onboardingSubtitle2 =>
      'Usa la búsqueda y los filtros para encontrar al Pokémon que buscas.';

  @override
  String get onboardingTitle3 => 'Descubre sus habilidades';

  @override
  String get onboardingSubtitle3 =>
      'Conoce las estadísticas, movimientos y evoluciones de cada Pokémon.';

  @override
  String get getStarted => 'Comenzar';

  @override
  String get height => 'Altura';

  @override
  String get weight => 'Peso';

  @override
  String get stats => 'Estadísticas Base';

  @override
  String get abilities => 'Habilidades';

  @override
  String get moves => 'Movimientos';

  @override
  String get evolutions => 'Evoluciones';

  @override
  String get hp => 'HP';

  @override
  String get attack => 'Ataque';

  @override
  String get defense => 'Defensa';

  @override
  String get specialAttack => 'At. Esp.';

  @override
  String get specialDefense => 'Def. Esp.';

  @override
  String get speed => 'Velocidad';

  @override
  String get noFavorites => 'Aún no hay favoritos';

  @override
  String get noFavoritesHint =>
      'Añade pokémons a tus favoritos para verlos aquí.';
}
