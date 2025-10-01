import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_app/core/theme/app_colors.dart';
import 'package:pokedex_app/core/theme/app_text_styles.dart';
import 'package:pokedex_app/core/theme/type_colors.dart';
import 'package:pokedex_app/features/pokemon_list/presentation/providers/filter_provider.dart';

class FilterBottomSheet extends ConsumerStatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  ConsumerState<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends ConsumerState<FilterBottomSheet> {
  String? _selectedType;

  @override
  void initState() {
    super.initState();
    _selectedType = ref.read(pokemonFilterNotifierProvider).type;
  }

  @override
  Widget build(BuildContext context) {
    // Lista de tipos disponibles para filtrar
    final types = TypeColors.getTypeNames();

    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Filtrar por tipo', style: AppTextStyles.sectionTitle),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: types.map((type) {
              final isSelected = _selectedType == type;
              return ChoiceChip(
                label: Text(type),
                selected: isSelected,
                onSelected: (selected) {
                  setState(() {
                    _selectedType = selected ? type : null;
                  });
                },
                selectedColor: TypeColors.getColorForType(type),
                labelStyle: TextStyle(
                  color: isSelected ? AppColors.white : AppColors.grey_2,
                ),
                backgroundColor: AppColors.grey_5,
                shape: StadiumBorder(
                  side: BorderSide(
                    color: isSelected ? Colors.transparent : AppColors.grey_4,
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    ref.read(pokemonFilterNotifierProvider.notifier).clearFilters();
                    Navigator.pop(context);
                  },
                  child: const Text('Borrar Filtro'),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(pokemonFilterNotifierProvider.notifier).setType(_selectedType);
                    Navigator.pop(context);
                  },
                  child: const Text('Aplicar'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
