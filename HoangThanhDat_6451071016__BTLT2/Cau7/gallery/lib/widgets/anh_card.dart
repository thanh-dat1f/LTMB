import 'package:flutter/material.dart';
import '../model/anh_item.dart';

/// Widget hiển thị một ô ảnh trong lưới gallery.
/// Cấu trúc: ClipRRect > Image.network (loading indicator + placeholder lỗi)
class AnhCard extends StatelessWidget {
  final AnhItem anhItem;

  const AnhCard({super.key, required this.anhItem});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        anhItem.imageUrl,
        fit: BoxFit.cover,
        // Hiển thị vòng xoay khi đang tải ảnh
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return _loadingWidget(loadingProgress);
        },
        // Hiển thị placeholder khi lỗi
        errorBuilder: (context, error, stackTrace) => _placeholder(),
      ),
    );
  }

  /// Vòng xoay loading với phần trăm tiến trình
  Widget _loadingWidget(ImageChunkEvent loadingProgress) {
    final double? percent = loadingProgress.expectedTotalBytes != null
        ? loadingProgress.cumulativeBytesLoaded /
              loadingProgress.expectedTotalBytes!
        : null;

    return Container(
      color: Colors.grey.shade200,
      child: Center(
        child: CircularProgressIndicator(
          value: percent,
          strokeWidth: 2,
          color: const Color(0xFF1565C0),
        ),
      ),
    );
  }

  /// Placeholder khi tải ảnh thất bại
  Widget _placeholder() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.broken_image, size: 40, color: Colors.grey.shade500),
          const SizedBox(height: 6),
          Text(
            anhItem.tieuDe,
            style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }
}
