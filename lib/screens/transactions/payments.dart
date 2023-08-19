import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
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
                child: PaymentListItem(),
              ),
            ),
          );
        },
      ),
    );
  }
}

class PaymentListItem extends StatelessWidget {
  const PaymentListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.orange,
      child: ListTile(
        title: Text('payment'),
        leading: Icon(Icons.access_alarm),
      ),
    );
  }
}
