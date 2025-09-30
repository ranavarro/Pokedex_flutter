import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex_app/core/l10n/generated/app_localizations.dart';
import 'package:pokedex_app/features/splash_onboarding/presentation/providers/onboarding_provider.dart';
import 'package:pokedex_app/features/splash_onboarding/presentation/widgets/onboarding_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    final pages = [
      OnboardingPage(
        title: l10n.onboardingTitle1,
        subtitle: l10n.onboardingSubtitle1,
        // Aquí se puede poner una imagen o animación diferente para cada página
        child: const Icon(Icons.catching_pokemon, size: 120),
      ),
      OnboardingPage(
        title: l10n.onboardingTitle2,
        subtitle: l10n.onboardingSubtitle2,
        child: const Icon(Icons.search, size: 120),
      ),
      OnboardingPage(
        title: l10n.onboardingTitle3,
        subtitle: l10n.onboardingSubtitle3,
        child: const Icon(Icons.bolt, size: 120),
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: pages,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: pages.length,
                    effect: ExpandingDotsEffect(
                      activeDotColor: theme.primaryColor,
                      dotColor: Colors.grey,
                      dotHeight: 8,
                      dotWidth: 8,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_currentPage == pages.length - 1) {
                        ref.read(onboardingCompletionProvider.notifier).completeOnboarding();
                        context.go('/pokedex');
                      } else {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.primaryColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Text(
                      _currentPage == pages.length - 1 ? l10n.getStarted : 'Next', // añadir 'Next' a l10n
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
