import 'package:flutter/material.dart';
import 'package:pokedex_app/core/theme/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class PokemonCardSkeleton extends StatelessWidget {
  const PokemonCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.grey_5,
      highlightColor: AppColors.grey_6,
      child: Card(
        color: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        child: SizedBox(
          height: 120,
          child: Row(
            children: [
              // Esqueleto de la sección de información
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(width: 50, height: 14, color: AppColors.white),
                      const SizedBox(height: 8),
                      Container(width: 120, height: 20, color: AppColors.white),
                      const Spacer(),
                      Row(
                        children: [
                          Container(
                              width: 60,
                              height: 24,
                              decoration:
                                  BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(20))),
                          const SizedBox(width: 8),
                          Container(
                              width: 60,
                              height: 24,
                              decoration:
                                  BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(20))),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              // Esqueleto de la sección de imagen
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: AppColors.grey_5.withOpacity(0.5),
                  borderRadius: const BorderRadius.horizontal(right: Radius.circular(15)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
