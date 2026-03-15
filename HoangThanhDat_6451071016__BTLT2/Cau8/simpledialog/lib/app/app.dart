import 'package:flutter/material.dart';

import '../view/simple_dialog_screen.dart';

class SimpleDialogApp extends StatelessWidget {
  const SimpleDialogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Dialog Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const SimpleDialogScreen(),
    );
  }
}
