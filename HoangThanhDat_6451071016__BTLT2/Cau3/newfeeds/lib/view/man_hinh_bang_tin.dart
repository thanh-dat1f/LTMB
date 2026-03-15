import 'package:flutter/material.dart';
import '../model/bai_viet.dart';
import '../widgets/the_bai_viet.dart';


class ManHinhBangTin extends StatelessWidget {
  const ManHinhBangTin({super.key});

  List<BaiViet> get _danhSachBaiViet => [
    BaiViet(
      tieuDe: 'Article Title 1: Flutter is awesome!',
      moTa:
          'Learn about cross-platform development with the latest news on Flutter framework updates and community tutorials.',
      duongDanAnh:
          'https://images.unsplash.com/photo-1486325212027-8081e485255e?w=600&q=80',
    ),
    BaiViet(
      tieuDe: 'Article Title 2: Local Coffee Shop Opens',
      moTa:
          'The cozy new cafe, "The Daily Grind," offers local brews and a relaxing atmosphere for customers.',
      duongDanAnh:
          'https://images.unsplash.com/photo-1501339847302-ac426a4a7cbb?w=600&q=80',
    ),
    BaiViet(
      tieuDe: 'Article Title 3: New Tech Gadgets',
      moTa:
          'Discover the newest smartphones, smartwatches, and innovative devices hitting the market this week.',
      duongDanAnh:
          'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=600&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: _danhSachBaiViet
              .map((baiViet) => TheBaiViet(baiViet: baiViet))
              .toList(),
        ),
      ),
    );
  }
}
