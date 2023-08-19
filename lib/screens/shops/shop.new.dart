import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewShop extends StatelessWidget {
  const NewShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Shop')),
      body: Center(
          child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(hintText: 'Owner Name'),
          ),
          ElevatedButton(
              onPressed: () => context.go('/inventory'),
              child: const Text('continue'))
        ],
      )),
    );
  }
}
