import 'package:flutter/material.dart';

import '../model/course.dart';
import '../utils/app_theme.dart';
import '../view/course_detail_screen.dart';

class CourseDetailApp extends StatelessWidget {
  const CourseDetailApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course Detail',
      theme: AppTheme.lightTheme,
      home: const CourseDetailScreen(course: Course.sample),
    );
  }
}
