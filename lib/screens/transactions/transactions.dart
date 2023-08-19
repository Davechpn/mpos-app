import 'package:flutter/material.dart';
import 'package:mpos_app/screens/transactions/payments.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Transactions'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.paid_outlined), Text('Payments')],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.shopping_basket_outlined),
                    Text('Orders')
                  ],
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Payments(),
          Center(child: Text('Orders')),
        ]),
      ),
    );
  }
}
