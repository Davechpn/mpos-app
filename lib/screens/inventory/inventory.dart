import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'inventory.list.dart';

class InventoryList extends StatelessWidget {
  const InventoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Inventory'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.inventory_outlined), Text('Inventory')],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.inventory_2_outlined),
                    Text('Stock Diary')
                  ],
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          GroupedScrollViewWithToggleTestPage(
            title: 'Inventory',
          ),
          Center(child: Text('Stock diary')),
        ]),
      ),
    );
  }
}
