class Course {
  const Course({
    required this.title,
    required this.instructor,
    required this.description,
    required this.imageUrl,
  });

  final String title;
  final String instructor;
  final String description;
  final String imageUrl;

  static const sample = Course(
    title: 'Advanced Flutter UI Design',
    instructor: 'Dr. Angela Yu',
    description:
        'Learn to build beautiful, responsive user interfaces in Flutter. '
        'This course covers everything from basic widgets to complex layouts, '
        'animations, and state management. Ideal for beginner to intermediate '
        'developers. Includes hands-on projects and quizzes.',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfCXqTlxJb0gPhhkHIHg9F1aTYOTsgkm99oA&s',
  );
}
