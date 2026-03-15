import 'package:flutter/material.dart';

import '../model/product.dart';
import '../widgets/product_grid_tile.dart';

class ProductGridScreen extends StatelessWidget {
  const ProductGridScreen({super.key});

  static const List<Product> _products = [
    Product(
      name: 'Giày Chạy Bộ Nam',
      price: 'd950,000',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx_Z5JkhQKpqEihP5b-_W3wcLDl1XPBCl4MA&s',
      rating: 4.5,
    ),
    Product(
      name: 'Áo Thun Tập Luyện',
      price: 'd320,000',
      imageUrl:
          'https://product.hstatic.net/200000477321/product/ao_thun_tap_luyen_gym_mau_xanh_da_troi_iw8374_01_laydown_hover_352feb55e0a44f6da29ccce9274ac7a7_grande.jpg',
      rating: 4.5,
    ),
    Product(
      name: 'Bóng Đá Thể Thao',
      price: 'd510,000',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAburOXuYaRPLXlw9fUn1fhFs7ERmapHC3Zw&s',
      rating: 4.5,
    ),
    Product(
      name: 'Túi Đa Năng Thể Thao',
      price: 'd415,000',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYSfJPs91sJmXJXJ22wZ1-ANPSorML-q6chw&s',
      rating: 4.5,
    ),
    Product(
      name: 'Mũ Lưỡi Trai Thể Thao',
      price: 'd185,000',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmKUdw_ytwIWkeJlXESsKWfxrhweeaBFoi1Q&s',
      rating: 4.5,
    ),
    Product(
      name: 'Vớ Thể Thao Chống Trơn Trượt',
      price: 'd95,000',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHDqd27qUZz1vgDeYhe2S8AbSiUoeZQfl0ZA&s',
      rating: 4.5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Cửa Hàng Thể Thao')),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
          child: GridView.count(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom + 36,
            ),
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.74,
            children: _products
                .map((product) => ProductGridTile(product: product))
                .toList(),
          ),
        ),
      ),
    );
  }
}
