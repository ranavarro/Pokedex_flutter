import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPokeball extends StatefulWidget {
  final double size;
  const AnimatedPokeball({super.key, this.size = 150});

  @override
  State<AnimatedPokeball> createState() => _AnimatedPokeballState();
}

class _AnimatedPokeballState extends State<AnimatedPokeball> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * pi,
          child: child,
        );
      },
      child: Image.asset(
        'assets/images/pokeball.png',
        width: widget.size,
        height: widget.size,
      ),
    );
  }
}
