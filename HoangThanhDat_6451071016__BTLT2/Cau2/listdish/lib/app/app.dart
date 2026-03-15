import 'package:flutter/material.dart';
import '../view/mon_an_list_view.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'Danh sách món ăn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF1565C0),
            primary: const Color(0xFF1565C0),
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home:  const MonAnListView(),
    );
  }
}