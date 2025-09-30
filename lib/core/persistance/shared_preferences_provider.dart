import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences_provider.g.dart';

@riverpod
SharedPreferences sharedPreferences(SharedPreferencesRef ref) {
  // Este provider lanzará una excepción hasta que sea sobreescrito en el main.
  throw UnimplementedError();
}
