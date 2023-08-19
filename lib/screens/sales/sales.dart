import 'package:flutter/material.dart';
import 'package:mpos_app/screens/sales/analytics.dart';

class Sales extends StatelessWidget {
  const Sales({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sales'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.bar_chart_outlined), Text('Analytics')],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.show_chart_outlined),
                    Text('Profit/Loss')
                  ],
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Analytics(),
          Center(child: Text('Profit/Loss')),
        ]),
      ),
    );
  }
}
