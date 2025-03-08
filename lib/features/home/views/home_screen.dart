import 'package:conversational_english/core/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:power_state/power_state.dart';

class SHome extends StatefulWidget {
  const SHome({super.key});

  @override
  State<SHome> createState() => _SHomeState();
}

class _SHomeState extends State<SHome> {
  final CTheme cTheme = PowerVault.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          IconButton(
              onPressed: () {
                if (cTheme.currentIndex == 0) {
                  cTheme.updateTheme(1);
                } else {
                  cTheme.updateTheme(0);
                }
              },
              icon: const Icon(Icons.dark_mode))
        ],
      ),
      body: const Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}
