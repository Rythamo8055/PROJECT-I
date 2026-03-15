import 'package:flutter/material.dart';
import 'package:project_i/ui/components/metric_card.dart';
import 'package:project_i/ui/themes/app_theme.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            // Top Header Section
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Column(
                  children: [
                    Text(
                      'Outstanding',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    const SizedBox(height: 8),
                    // In a real app we'd use a dotted font or CustomPainter for dotted text
                    Text(
                      '₹ 45,000',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            fontSize: 64,
                            letterSpacing: 1,
                          ),
                    ),
                    const SizedBox(height: 16),
                    // Simplified wave graphic/divider
                    SizedBox(
                      height: 40,
                      child: Center(
                        child: Container(
                          width: 200,
                          height: 2,
                          color: AppColors.starship.withOpacity(0.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),

            // Main Featured Full Width Card
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              sliver: SliverToBoxAdapter(
                child: SizedBox(
                   height: 140,
                   child: MetricCard(
                     title: 'Paid This Month',
                     value: '₹ 1.2',
                     unit: 'L',
                     glowColor: AppColors.rareJade,
                   ),
                ),
              ),
            ),
            
            const SliverToBoxAdapter(child: SizedBox(height: 16)),

            // Metric Cards Grid
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                  childAspectRatio: 1.1, // Controls height of the cards
                ),
                delegate: SliverChildListDelegate([
                  const MetricCard(
                    title: 'Overdue',
                    value: '2',
                    unit: 'Inv',
                    glowColor: AppColors.sunsetOrange,
                  ),
                  const MetricCard(
                    title: 'Drafts',
                    value: '4',
                    unit: 'Inv',
                    glowColor: AppColors.floralMagenta,
                  ),
                  const MetricCard(
                    title: 'Clients',
                    value: '12',
                    glowColor: AppColors.deepOcean,
                  ),
                  const MetricCard(
                    title: 'Growth',
                    value: '+14',
                    unit: '%',
                    glowColor: AppColors.starship, 
                  ),
                ]),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 40)),
          ],
        ),
      ),
    );
  }
}
