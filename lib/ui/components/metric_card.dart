import 'package:flutter/material.dart';
import 'package:project_i/ui/components/glowing_glass_card.dart';

class MetricCard extends StatelessWidget {
  final String title;
  final String value;
  final String? unit;
  final Color glowColor;
  final Widget? customGraphic;

  const MetricCard({
    super.key,
    required this.title,
    required this.value,
    this.unit,
    required this.glowColor,
    this.customGraphic,
  });

  @override
  Widget build(BuildContext context) {
    return GlowingGlassCard(
      glowColor: glowColor,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background graphic goes here
          if (customGraphic != null)
            Positioned.fill(
              child: ClipRect(child: customGraphic!),
            ),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.white70,
                ),
              ),
              const Spacer(),
              Theme(
                data: Theme.of(context).copyWith(
                  textTheme: Theme.of(context).textTheme.copyWith(
                    bodyMedium: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      height: 1.0,
                    ),
                  )
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      value,
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontSize: 36, // Override for cards
                        fontWeight: FontWeight.w500,
                        height: 1.0,
                      ),
                    ),
                    if (unit != null) ...[
                      const SizedBox(width: 4),
                      Text(
                        unit!,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
