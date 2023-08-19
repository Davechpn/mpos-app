import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  var columnCount = 2;
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredGrid(
            position: index,
            duration: const Duration(milliseconds: 650),
            columnCount: columnCount,
            child: const ScaleAnimation(
              child: FadeInAnimation(
                child: ProductGridItem(),
              ),
            ),
          );
        },
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme _textTheme = Theme.of(context).textTheme;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: Image.network(
                'data:image/jpeg;base64,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'),
          ),
          Text(
            'Coca cola',
            style: _textTheme.labelLarge,
          )
        ],
      ),
    );
  }
}
