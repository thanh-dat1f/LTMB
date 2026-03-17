import 'package:flutter/material.dart';
import '../widgets/tap_counter_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bài 4: Đếm Số Lần Tap'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: TapCounterWidget(),
      ),
    );
  }
}
