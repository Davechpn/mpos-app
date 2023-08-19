import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SelectShop extends StatelessWidget {
  const SelectShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Shop'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/pos'),
          child: const Text('Best Value Shop'),
        ),
      ),
    );
  }
}
