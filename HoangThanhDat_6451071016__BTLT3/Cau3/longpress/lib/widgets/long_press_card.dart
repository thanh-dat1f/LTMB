import 'package:flutter/material.dart';

import '../utils/app_constants.dart';

class LongPressCard extends StatelessWidget {
  const LongPressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          AppConstants.studentIdLabel,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onLongPress: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(AppConstants.longPressMessage),
                duration: Duration(seconds: 2),
              ),
            );
          },
          child: Card(
            elevation: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 22),
              child: Text(
                AppConstants.cardText,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
