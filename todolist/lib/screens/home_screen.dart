import 'package:flutter/material.dart';
import 'package:todolist/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: Theme.of(context).colorScheme.primary,
              ),
              Container(
                height: deviceSize.height * 0.7,
                width: deviceSize.width,
                color: Theme.of(context).colorScheme.primary,
              ),
            ],

          )
        ],
      )
    );

  }
}
