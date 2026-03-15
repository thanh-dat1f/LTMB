import 'package:flutter/material.dart';

import '../model/dialog_option.dart';
import '../widgets/show_dialog_button.dart';

class SimpleDialogScreen extends StatelessWidget {
  const SimpleDialogScreen({super.key});

  Future<void> _showOptionDialog(BuildContext context) async {
    final selected = await showDialog<DialogOption>(
      context: context,
      builder: (dialogContext) {
        return SimpleDialog(
          title: const Text('Choose an option'),
          children: DialogOption.values
              .map(
                (option) => SimpleDialogOption(
                  onPressed: () => Navigator.of(dialogContext).pop(option),
                  child: Text(option.label),
                ),
              )
              .toList(),
        );
      },
    );

    if (!context.mounted || selected == null) {
      return;
    }

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('Selected: ${selected.label}')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Dialog Demo')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('ElevatedButton'),
            const SizedBox(height: 8),
            ShowDialogButton(onPressed: () => _showOptionDialog(context)),
          ],
        ),
      ),
    );
  }
}
