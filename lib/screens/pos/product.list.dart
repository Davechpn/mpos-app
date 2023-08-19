import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: const SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: ProductListItem(),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProductListItem extends StatelessWidget {
  const ProductListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.orange,
      child: ListTile(
        title: Text('product'),
        leading: Icon(Icons.access_alarm),
      ),
    );
  }
}
