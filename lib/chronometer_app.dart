import 'package:chronometer/features/home_page/view/home_page.dart';
import 'package:chronometer/theme/theme.dart';
import 'package:flutter/material.dart';

class ChronometerApp extends StatelessWidget {
  const ChronometerApp({super.key});

  static const String _title = 'Chronometer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: theme,
      home: const HomePage(title: _title),
    );
  }
}
