import 'package:apps/src/features/authentication/presentation/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(title: 'FitDietary', home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DietaryFit',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFB8FF9F)),
      ),
      debugShowCheckedModeBanner: false,
      home: const StartScreen(),
    );
  }
}
