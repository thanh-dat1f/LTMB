import 'package:flutter/material.dart';

class DoubleTapBox extends StatefulWidget {
  const DoubleTapBox({super.key});

  @override
  State<DoubleTapBox> createState() => _DoubleTapBoxState();
}

class _DoubleTapBoxState extends State<DoubleTapBox> {
  bool _isBlue = true; // Trạng thái màu hiện tại: true = Blue, false = Red

  void _toggleColor() {
    setState(() {
      _isBlue = !_isBlue;
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
        const SizedBox(height: 20),

        GestureDetector(
          onDoubleTap: _toggleColor, // Xử lý sự kiện double tap
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: _isBlue ? Colors.blue : Colors.red,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Center(
              child: Text(
                _isBlue ? 'Blue' : 'Red',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 20),
        Text(
          'Double tap để đổi màu',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
