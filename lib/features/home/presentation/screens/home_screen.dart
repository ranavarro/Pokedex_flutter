import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex_app/core/l10n/generated/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  final Widget child;
  const HomeScreen({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    int currentIndex = _calculateSelectedIndex(context);

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => _onItemTapped(index, context),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.list),
            label: l10n.pokemonListTitle,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite),
            label: l10n.favoritesTitle,
          ),
        ],
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/pokedex')) {
      return 0;
    }
    if (location.startsWith('/favorites')) {
      return 1;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/pokedex');
        break;
      case 1:
        GoRouter.of(context).go('/favorites');
        break;
    }
  }
}
