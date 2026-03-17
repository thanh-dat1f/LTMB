import 'package:flutter/material.dart';
import '../utils/tap_counter_helper.dart';

class TapCounterWidget extends StatefulWidget {
  const TapCounterWidget({super.key});

  @override
  State<TapCounterWidget> createState() => _TapCounterWidgetState();
}

class _TapCounterWidgetState extends State<TapCounterWidget> {
  // Sử dụng helper từ utils để quản lý logic đếm
  final TapCounterHelper _helper = TapCounterHelper();

  void _onTap() {
    setState(() {
      _helper.increment();
    });
  }

  void _onReset() {
    setState(() {
      _helper.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'MSSV: 6451071016',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 30),

        Text(
          _helper.displayText, // Dùng hàm từ utils
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 30),

        ElevatedButton(
          onPressed: _onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text(
            'Tap Here',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15),

        TextButton(
          onPressed: _onReset,
          child: const Text(
            'Reset',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
