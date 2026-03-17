import 'package:flutter/material.dart';

import '../widgets/pointer_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pointer Events Demo'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Padding(padding: EdgeInsets.all(16), child: PointerContainer()),
      ),
    );
  }
}
