import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex_app/core/widgets/animated_pokeball.dart';
import 'package:pokedex_app/features/splash_onboarding/presentation/providers/onboarding_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigate();
  }

  void _navigate() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        final hasSeenOnboarding = ref.read(onboardingCompletionProvider);
        if (hasSeenOnboarding) {
          context.go('/pokedex');
        } else {
          context.go('/onboarding');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AnimatedPokeball(size: 150),
      ),
    );
  }
}
