import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TypeBackgroundIcon extends StatelessWidget {
  final String type;
  // --- CAMBIO CLAVE: Añadimos un parámetro de tamaño ---
  final double size;

  const TypeBackgroundIcon({
    super.key,
    required this.type,
    this.size = 125, // Mantenemos un valor por defecto
  });

  @override
  Widget build(BuildContext context) {
    final String assetPath = 'assets/icons/types/${type.toLowerCase()}.svg';

    // Usamos un FutureBuilder para que la app no falle si un SVG no existe.
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(assetPath),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SvgPicture.asset(
            assetPath,
            // Usamos el tamaño proporcionado
            width: size,
            height: size,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.4), // Opacidad del diseño
              BlendMode.srcIn,
            ),
          );
        }
        // Si el SVG no se encuentra, no mostramos nada.
        return const SizedBox.shrink();
      },
    );
  }
}
