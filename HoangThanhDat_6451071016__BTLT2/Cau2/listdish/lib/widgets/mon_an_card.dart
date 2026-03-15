import 'package:flutter/material.dart';
import '../model/mon_an.dart';
import '../utils/app_colors.dart';


class MonAnCard extends StatelessWidget {
    final MonAn monAn;

    const MonAnCard({super.key, required this.monAn});

    @override
    Widget build(BuildContext context){
      return Card(
        color:  AppColors.cardBg,
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        child: Padding(padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            _buildImage(),
            const SizedBox(width: 14),
            Expanded(
              child: _buildThongTin()),
          ],
        ),
        ),
      );
    }
    Widget _buildImage() {
      return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: NetworkImage(monAn.hinhAnh),
          width: 72,
          height: 72,
          fit: BoxFit.cover,
          loadingBuilder: (_, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return _placeholder();
          },
          errorBuilder: (_, __, ___) => _placeholder(),
        ),
      );
    }
    Widget _placeholder() {
      return Container(
        width: 72,
        height: 72,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(Icons.restaurant, color: Colors.grey, size: 32),
      );
    }

    Widget _buildThongTin() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              monAn.ten,
              style: const TextStyle(
                color: AppColors.tenMon,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              monAn.moTa,
              style: const TextStyle(
                color: AppColors.moTa,
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              monAn.giaFormatted,
              style: const TextStyle(
                color: AppColors.gia,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        );
    }
}