import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CustomsPage extends StatelessWidget {
  const CustomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(
            child: Text('Customs Page is under development'),
          )
        ],
      ),
    );
  }
}
