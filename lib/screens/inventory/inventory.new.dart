import 'package:flutter/material.dart';

class NewInventory extends StatelessWidget {
  const NewInventory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Product'),
      ),
      body: const TextField(
        decoration: InputDecoration(hintText: 'Product Name'),
      ),
    );
  }
}
