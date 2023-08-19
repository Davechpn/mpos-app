import 'package:flutter/material.dart';
import 'package:mpos_app/screens/people/users.dart';

class People extends StatelessWidget {
  const People({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('People'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.badge_outlined), Text('Users')],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.groups_2_outlined), Text('Customers')],
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Users(),
          Center(child: Text('Customers, accounts for loyalty or credit')),
        ]),
      ),
    );
  }
}
