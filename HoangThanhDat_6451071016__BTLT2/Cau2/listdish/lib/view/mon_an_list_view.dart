import 'package:flutter/material.dart';
import '../model/mon_an.dart';
import '../utils/mon_an_data.dart';
import '../utils/app_colors.dart';
import '../widgets/mon_an_card.dart';


class MonAnListView extends StatelessWidget {
  const MonAnListView({super.key});

  @override
  Widget build(BuildContext context) {
    final danhSachMonAn = MonAnData.danhSachMonAn;
    return Scaffold(
      backgroundColor: AppColors.background,
        appBar: _buildAppBar(),
        body: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 10),
            itemCount: danhSachMonAn.length,
            itemBuilder: (context, index) {
               return MonAnCard(monAn: danhSachMonAn[index]);
            },
        ),
    );
  }
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.appBarText,
      title: const Text('DANH SÁCH MÓN ĂN',
          style: TextStyle(
            color: AppColors.appBarText,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              letterSpacing: 1.2,
          ),
      ),
    );
  }
}