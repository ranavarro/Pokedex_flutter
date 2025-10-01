import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex_app/features/home/presentation/screens/home_screen.dart';
import 'package:pokedex_app/features/pokemon_detail/domain/entities/pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon_detail/presentation/screens/pokemon_detail_screen.dart';
import 'package:pokedex_app/features/pokemon_favorites/presentation/screens/favorites_screen.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/screens/pokemon_list_screen.dart';
import 'package:pokedex_app/features/splash_onboarding/presentation/screens/onboarding_screen.dart';
import 'package:pokedex_app/features/splash_onboarding/presentation/screens/splash_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return HomeScreen(child: child);
        },
        routes: [
          GoRoute(
              path: '/pokedex',
              pageBuilder: (context, state) => const NoTransitionPage(
                    child: PokemonListScreen(),
                  ),
              routes: [
                GoRoute(
                  path: 'pokemon/:name',
                  name: 'pokemon-detail',
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (context, state) {
                    // Recibimos el objeto PokemonDetail completo desde el parámetro 'extra'
                    final pokemon = state.extra as PokemonDetail;
                    return PokemonDetailScreen(pokemon: pokemon);
                  },
                ),
              ]),
          GoRoute(
            path: '/favorites',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: FavoritesScreen(),
            ),
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: const Text('Page Not Found')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(state.error.toString()),
            ElevatedButton(
              onPressed: () => context.go('/pokedex'),
              child: const Text('Home'),
            ),
          ],
        ),
      ),
    ),
  );
}
