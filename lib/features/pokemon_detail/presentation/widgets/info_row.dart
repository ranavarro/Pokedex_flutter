import 'package:flutter/material.dart';
import 'package:pokedex_app/core/theme/app_text_styles.dart';

class InfoRow extends StatelessWidget {
  final String label;
  final String value;
  final Widget? leading;

  const InfoRow({
    super.key,
    required this.label,
    required this.value,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(label, style: AppTextStyles.infoLabel),
          ),
          if (leading != null) ...[
            leading!,
            const SizedBox(width: 8),
          ],
          Expanded(
            child: Text(value, style: AppTextStyles.infoValue),
          ),
        ],
      ),
    );
  }
}
