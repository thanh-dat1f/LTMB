import 'package:flutter/material.dart';

class DashboardItem {
  const DashboardItem({
    required this.label,
    required this.icon,
    required this.iconColor,
  });

  final String label;
  final IconData icon;
  final Color iconColor;

  static const items = [
    DashboardItem(
      label: 'Profile',
      icon: Icons.account_circle,
      iconColor: Color(0xFF1E88E5),
    ),
    DashboardItem(
      label: 'Messages',
      icon: Icons.chat,
      iconColor: Color(0xFF388E3C),
    ),
    DashboardItem(
      label: 'Settings',
      icon: Icons.settings,
      iconColor: Color(0xFFFB8C00),
    ),
    DashboardItem(
      label: 'Notifications',
      icon: Icons.notifications_active,
      iconColor: Color(0xFF8E24AA),
    ),
  ];
}
