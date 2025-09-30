// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Pokedex';

  @override
  String get pokemonListTitle => 'Pokedex';

  @override
  String get favoritesTitle => 'Favorites';

  @override
  String get onboardingTitle1 => 'All the Pokémon in one place';

  @override
  String get onboardingSubtitle1 =>
      'Access a vast catalog of Pokémon from every generation.';

  @override
  String get onboardingTitle2 => 'Find your favorite';

  @override
  String get onboardingSubtitle2 =>
      'Use the search and filters to find the Pokémon you\'re looking for.';

  @override
  String get onboardingTitle3 => 'Discover their abilities';

  @override
  String get onboardingSubtitle3 =>
      'Learn about the stats, moves, and evolutions of each Pokémon.';

  @override
  String get getStarted => 'Get Started';

  @override
  String get height => 'Height';

  @override
  String get weight => 'Weight';

  @override
  String get stats => 'Base Stats';

  @override
  String get abilities => 'Abilities';

  @override
  String get moves => 'Moves';

  @override
  String get evolutions => 'Evolutions';

  @override
  String get hp => 'HP';

  @override
  String get attack => 'Attack';

  @override
  String get defense => 'Defense';

  @override
  String get specialAttack => 'Sp. Atk';

  @override
  String get specialDefense => 'Sp. Def';

  @override
  String get speed => 'Speed';

  @override
  String get noFavorites => 'No favorites yet';

  @override
  String get noFavoritesHint =>
      'Add pokemons to your favorites to see them here.';
}
