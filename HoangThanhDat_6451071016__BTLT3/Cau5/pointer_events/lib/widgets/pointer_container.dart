import 'package:flutter/material.dart';

import '../utils/app_constants.dart';

class PointerContainer extends StatefulWidget {
  const PointerContainer({super.key});

  @override
  State<PointerContainer> createState() => _PointerContainerState();
}

class _PointerContainerState extends State<PointerContainer> {
  Offset? _tapPosition;

  void _updatePosition(PointerEvent event) {
    setState(() {
      _tapPosition = event.localPosition;
    });
  }

  String get _coordinateText {
    if (_tapPosition == null) {
      return AppConstants.waitingMessage;
    }

    final double x = _tapPosition!.dx;
    final double y = _tapPosition!.dy;
    return 'x: ${x.toStringAsFixed(1)} - y: ${y.toStringAsFixed(1)}';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          AppConstants.appTitle,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text(
          AppConstants.studentIdLabel,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        const Text(AppConstants.instruction, textAlign: TextAlign.center),
        const SizedBox(height: 16),
        Expanded(
          child: Listener(
            onPointerDown: _updatePosition,
            onPointerMove: _updatePosition,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                _coordinateText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
