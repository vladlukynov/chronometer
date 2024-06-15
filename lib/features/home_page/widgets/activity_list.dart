import 'package:flutter/material.dart';

class ActivityList extends StatelessWidget {
  const ActivityList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Activity List',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
