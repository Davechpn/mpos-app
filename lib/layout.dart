import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Layout extends StatefulWidget {
  const Layout({super.key, required this.child});
  final Widget child;
  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  goToTab(index) {
    switch (index) {
      case 0:
        context.go('/pos');
        break;
      case 1:
        context.go('/transactions');
        break;
      case 2:
        context.go('/inventory');
        break;
      case 3:
        context.go('/sales');
        break;
      case 4:
        context.go('/people');
        break;
      default:
        context.go('/inventory');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: widget.child,
      bottomNavigationBar: CurvedNavigationBar(
        color: Theme.of(context).primaryColor,
        backgroundColor: Colors.transparent,
        items: const <Widget>[
          Icon(Icons.point_of_sale_outlined, size: 30),
          Icon(Icons.receipt_long_outlined, size: 30),
          Icon(Icons.inventory_outlined, size: 30),
          Icon(Icons.bar_chart_outlined, size: 30),
          Icon(Icons.group_outlined, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
          goToTab(index);
          //Trigger the right context.go as per right index
        },
      ),
    );
  }
}
