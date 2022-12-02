import 'package:dev_habits/src/features/on_boarding/splash_screen.dart';
import 'package:flutter/material.dart';

class DevHabitsApp extends StatelessWidget {
  const DevHabitsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
