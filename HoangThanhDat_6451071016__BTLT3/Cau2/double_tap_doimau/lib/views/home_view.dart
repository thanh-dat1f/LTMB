import 'package:flutter/material.dart';
import '../widgets/double_tap_box.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bài 2: Double Tap Đổi Màu'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: DoubleTapBox(),
      ),
    );
  }
}