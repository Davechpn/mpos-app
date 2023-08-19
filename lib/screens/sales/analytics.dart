import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Analytics extends StatefulWidget {
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: AnimationLimiter(
          child: Column(
            children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 375),
              childAnimationBuilder: (widget) => SlideAnimation(
                horizontalOffset: 50.0,
                child: FadeInAnimation(
                  child: widget,
                ),
              ),
              children: [
                const SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    children: [
                      Card(elevation: 2, child: Text("Today")),
                      Card(elevation: 2, child: Text("Yesterday")),
                      Card(elevation: 2, child: Text("Sales Target")),
                    ],
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: Card(elevation: 2, child: Text("Sales Growth")),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: Card(elevation: 2, child: Text("Sales / Product")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
