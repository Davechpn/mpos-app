import 'package:flutter/material.dart';
import 'package:mpos_app/screens/pos/product.grid.dart';
import 'package:mpos_app/screens/pos/product.list.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class Pos extends StatefulWidget {
  Pos({super.key});

  @override
  State<Pos> createState() => _PosState();
}

class _PosState extends State<Pos> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    // ignore: avoid_print
    print('Dispose used');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('POS'),
          actions: const [
            Icon(Icons.settings),
          ],
          bottom: const TabBar(tabs: [
            Tab(
                child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [Icon(Icons.fingerprint), Text('Select')],
            )),
            Tab(
                child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [Icon(Icons.qr_code_scanner_outlined), Text('Scan')],
            )),
          ]),
        ),
        body: TabBarView(children: [
          Stack(children: [
            const ProductGrid(),
            Positioned(
              bottom: 80,
              right: 8,
              child: SearchBarAnimation(
                isOriginalAnimation: false,
                hintText: 'Search Item',
                buttonBorderColour: Colors.black45,
                onFieldSubmitted: (String value) {
                  debugPrint('onFieldSubmitted value $value');
                },
                textEditingController: myController,
                buttonWidget: const Icon(Icons.search),
                durationInMilliSeconds: 175,
                searchBoxWidth: 300,
                enableKeyboardFocus: true,
                trailingWidget: const Icon(Icons.add),
                secondaryButtonWidget: const Icon(Icons.edit),
                isSearchBoxOnRightSide: true,
              ),
            ),
            Positioned(
                top: 8,
                left: 8,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(24),
                  ),
                  child: const Icon(Icons.grid_view_outlined),
                )),
          ]),
          const Center(
            child: Text('Scan'),
          )
        ]),
      ),
    );
  }
}
