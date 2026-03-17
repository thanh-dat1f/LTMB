import'package:flutter/material.dart';

import '../widgets/long_press_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Long Press Demo'), centerTitle: true),
      body: const Center(child: LongPressCard()),
    );
  }
}
