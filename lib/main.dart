import 'package:flutter/material.dart';
import 'package:tuko/Screen/home_page.dart';

void main() {
  runApp(const Tuko());
}

class Tuko extends StatelessWidget {
  const Tuko({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_page(),
    );
  }
}
