import 'package:flutter/material.dart';
import '../model/anh_item.dart';
import '../widgets/anh_card.dart';

/// Màn hình Gallery: AppBar + GridView.builder 2 cột
class GalleryView extends StatelessWidget {
  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1565C0),
        title: const Text(
          'Gallery Ảnh',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: AnhItem.danhSach.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,     // 2 cột
            crossAxisSpacing: 8,   // khoảng cách ngang
            mainAxisSpacing: 8,    // khoảng cách dọc
            childAspectRatio: 1.0, // ảnh vuông
          ),
          itemBuilder: (context, index) {
            return AnhCard(anhItem: AnhItem.danhSach[index]);
          },
        ),
      ),
    );
  }
}