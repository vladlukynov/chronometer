import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Main Page',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
