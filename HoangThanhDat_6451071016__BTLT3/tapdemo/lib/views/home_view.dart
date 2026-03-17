import 'package:flutter/material.dart';
import '../widgets/tap_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Demo'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const Center(child: TapContainer()),
    );
    throw UnimplementedError();
  }
}
