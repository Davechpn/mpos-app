import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SelectAppType extends StatelessWidget {
  const SelectAppType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select App Type'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => context.go('/selectapptype/newshop'),
                child: const Text('Setup Shop')),
            ElevatedButton(
                onPressed: () => context.go('/selectapptype/selectshop'),
                child: const Text('Join Shop'))
          ],
        ),
      ),
    );
  }
}
