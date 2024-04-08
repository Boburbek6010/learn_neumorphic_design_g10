import 'package:flutter/material.dart';
import 'package:learn_neumorphic_design_g10/home_screen.dart';
import 'package:learn_neumorphic_design_g10/second_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondScreen(),
    );
  }
}
