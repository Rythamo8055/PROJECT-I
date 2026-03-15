import 'dart:ui';
import 'package:flutter/material.dart';

class GlowingGlassCard extends StatelessWidget {
  final Widget child;
  final Color glowColor;
  final double blurSigma;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;

  const GlowingGlassCard({
    super.key,
    required this.child,
    required this.glowColor,
    this.blurSigma = 20.0,
    this.borderRadius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveBorderRadius = borderRadius ?? BorderRadius.circular(24.0);

    return Container(
      decoration: BoxDecoration(
        borderRadius: effectiveBorderRadius,
        boxShadow: [
          BoxShadow(
            color: glowColor.withOpacity(0.15),
            blurRadius: 40,
            spreadRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: effectiveBorderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
          child: Container(
            padding: padding ?? const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              // Gradient that fades the primary glowing color into a transparent dark base
              gradient: RadialGradient(
                center: const Alignment(0.8, 0.8), // Off-center glow
                radius: 1.5,
                colors: [
                  glowColor.withOpacity(0.5),
                  const Color(0xFF1C1C1E).withOpacity(0.8), // card base color
                ],
                stops: const [0.0, 1.0],
              ),
              borderRadius: effectiveBorderRadius,
              border: Border.all(
                color: Colors.white.withOpacity(0.1),
                width: 1.0,
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
