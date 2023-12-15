import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DiscussionForumPage extends StatelessWidget {
  const DiscussionForumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(child: Text('Discussion Forum Page is under development'))
        ],
      ),
    );
  }
}
