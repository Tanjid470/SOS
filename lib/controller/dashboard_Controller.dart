import 'dart:ffi';

import 'package:get/get.dart';

class DashBoardController extends GetxController {
  List<Course> enrolledCourses = [
    Course(title: 'Data Structure ', courseId: 'course_id_1'),
    Course(title: 'Algorithms', courseId: 'course_id_2'),
    Course(title: 'Image Processing', courseId: 'course_id_3'),

    // Add more courses as needed
  ];
  late Set<int> offlineList ={};
  Set<int> myCourse ={0};
  int selectedIndex = 0;

  var currentTime = DateTime.now();
  List<String> courseModules = [
    'Module 1: Introduction',
    'Module 2: Array',
    'Module 3: Linked List',
    'Module 4: Hash Map',
    'Module 5: Stack',
    'Module 6: Queue',
    'Module 7: Tree',
    'Module 8: Binary Search',

    // Add more modules as needed
  ];

 
}

class Course {
  final String title;
  final String courseId;
  Course({required this.title, required this.courseId});
}
