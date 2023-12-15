import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class GstPage extends StatelessWidget {
  const GstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(
            child: Text('Gst page is under development'),
          )
        ],
      ),
    );
  }
}
