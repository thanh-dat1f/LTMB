import 'package:flutter/material.dart';

import '../view/product_grid_screen.dart';

class SportsStoreApp extends StatelessWidget {
  const SportsStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cửa Hàng Thể Thao',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 7, 87, 166),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 30, 136, 229),
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        useMaterial3: true,
      ),
      home: const ProductGridScreen(),
    );
  }
}
