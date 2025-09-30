import 'package:pokedex_app/core/persistance/shared_preferences_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboarding_provider.g.dart';

@riverpod
class OnboardingCompletion extends _$OnboardingCompletion {
  static const _hasSeenOnboardingKey = 'has_seen_onboarding';

  @override
  bool build() {
    final prefs = ref.watch(sharedPreferencesProvider);
    return prefs.getBool(_hasSeenOnboardingKey) ?? false;
  }

  Future<void> completeOnboarding() async {
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.setBool(_hasSeenOnboardingKey, true);
    state = true;
  }
}
