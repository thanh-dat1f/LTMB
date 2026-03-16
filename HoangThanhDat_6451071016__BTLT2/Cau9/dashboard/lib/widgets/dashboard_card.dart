import 'package:flutter/material.dart';

import '../model/dashboard_item.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({super.key, required this.item});

  final DashboardItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(item.icon, size: 64, color: item.iconColor),
          const SizedBox(height: 12),
          Text(
            item.label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF333333),
            ),
          ),
        ],
      ),
    );
  }
}
