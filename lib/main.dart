import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mpos_app/layout.dart';
import 'package:mpos_app/screens/inventory/inventory.dart';
import 'package:mpos_app/screens/inventory/inventory.new.dart';
import 'package:mpos_app/screens/people/people.dart';
import 'package:mpos_app/screens/pos/pos.dart';
import 'package:mpos_app/screens/registration/login.dart';
import 'package:mpos_app/screens/registration/app.select.dart';
import 'package:mpos_app/screens/sales/sales.dart';
import 'package:mpos_app/screens/shops/shop.select.dart';
import 'package:mpos_app/screens/registration/verification.dart';
import 'package:mpos_app/screens/transactions/transactions.dart';
import 'package:mpos_app/theme.dart';

import 'screens/shops/shop.new.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final _router = GoRouter(navigatorKey: _rootNavigatorKey, routes: [
  GoRoute(path: '/', builder: (context, state) => const Login(), routes: [
    GoRoute(
      path: 'verifycode',
      builder: (context, state) => const VerifyCode(),
    )
  ]),
  GoRoute(
      path: '/selectapptype',
      builder: (context, state) => const SelectAppType(),
      routes: [
        GoRoute(path: 'newshop', builder: (context, state) => const NewShop()),
        GoRoute(
          path: 'selectshop',
          builder: (context, state) => const SelectShop(),
        )
      ]),
  ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return Layout(child: child);
      },
      routes: [
        GoRoute(
          path: '/pos',
          builder: (context, state) => Pos(),
        ),
        GoRoute(
          path: '/transactions',
          builder: (context, state) => const Transactions(),
        ),
        GoRoute(
            path: '/inventory',
            builder: (context, state) => const InventoryList(),
            routes: [
              GoRoute(
                path: 'new',
                builder: (context, state) => const NewInventory(),
              )
            ]),
        GoRoute(
          path: '/sales',
          builder: (context, state) => const Sales(),
        ),
        GoRoute(
          path: '/people',
          builder: (context, state) => const People(),
        ),
      ])
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
