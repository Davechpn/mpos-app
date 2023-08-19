import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
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
                child: UserListItem(),
              ),
            ),
          );
        },
      ),
    );
  }
}

class UserListItem extends StatelessWidget {
  const UserListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.orange,
      child: ListTile(
        title: Text('user'),
        leading: Icon(Icons.access_alarm),
      ),
    );
  }
}
