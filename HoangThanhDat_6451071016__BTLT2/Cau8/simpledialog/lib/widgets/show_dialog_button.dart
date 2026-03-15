import 'package:flutter/material.dart';

class ShowDialogButton extends StatelessWidget {
  const ShowDialogButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('SHOW DIALOG'),
    );
  }
}
