import 'package:flutter/material.dart';
import 'package:pokedex_app/core/theme/app_colors.dart';
import 'package:pokedex_app/core/theme/app_text_styles.dart';

class DetailInfoBox extends StatelessWidget {
  final String label;
  final String value;
  final Widget? icon;

  const DetailInfoBox({
    super.key,
    required this.label,
    required this.value,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.grey_5),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) ...[
                  icon!,
                  const SizedBox(width: 8),
                ],
                Text(value, style: AppTextStyles.infoValue),
              ],
            ),
            const SizedBox(height: 4),
            Text(label, style: AppTextStyles.infoLabel),
          ],
        ),
      ),
    );
  }
}
