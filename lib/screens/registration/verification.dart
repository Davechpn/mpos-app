import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verify Code')),
      body: Center(
        child: ElevatedButton(
            onPressed: () => context.go('/selectapptype'),
            child: const Text('Go to Select App Type')),
      ),
    );
  }
}
