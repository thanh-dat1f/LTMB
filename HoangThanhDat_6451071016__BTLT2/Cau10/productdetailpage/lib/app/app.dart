import 'package:flutter/material.dart';

import '../model/product.dart';
import '../view/product_detail_screen.dart';

class ProductDetailApp extends StatelessWidget {
  const ProductDetailApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product Detail',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ProductDetailScreen(product: Product.sample),
    );
  }
}
