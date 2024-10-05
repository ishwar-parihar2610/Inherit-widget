import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  /// {@macro home_screen}
  const SecondScreen({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) => const Scaffold(
          body: Center(
        child: Text("Second Screen"),
      ));
}
