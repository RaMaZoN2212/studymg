import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/course.dart';

class CourseProvider extends ChangeNotifier {
  late Box<Course> _courseBox;
  List<Course> _courses = [];

  CourseProvider() {
    _courseBox = Hive.box<Course>('courses');
    _loadCourses();
  }

  List<Course> get courses => _courses;

  List<Course> get sortedCourses {
    final sorted = List<Course>.from(_courses);
    sorted.sort((a, b) => a.name.compareTo(b.name));
    return sorted;
  }

  void _loadCourses() {
    _courses = _courseBox.values.toList();
    notifyListeners();
  }

  Future<void> addCourse(Course course) async {
    await _courseBox.put(course.id, course);
    _loadCourses();
  }

  Future<void> updateCourse(Course course) async {
    await _courseBox.put(course.id, course);
    _loadCourses();
  }

  Future<void> deleteCourse(String id) async {
    await _courseBox.delete(id);
    _loadCourses();
  }

  Course? getCourseById(String id) {
    return _courses.firstWhere((course) => course.id == id);
  }

  List<Course> getCoursesByWeekday(Weekday weekday) {
    return _courses.where((course) => course.weekdays.contains(weekday)).toList();
  }

  DateTime? getNextClassDate(Course course) {
    final now = DateTime.now();
    final currentWeekday = Weekday.values[now.weekday - 1];
    
    // Find the next occurrence of this course
    for (int i = 0; i < 14; i++) {
      final checkDate = now.add(Duration(days: i));
      final checkWeekday = Weekday.values[checkDate.weekday - 1];
      
      if (course.weekdays.contains(checkWeekday)) {
        if (i == 0 && checkWeekday == currentWeekday) {
          // If it's today, check if the class time has passed
          continue;
        }
        return checkDate;
      }
    }
    
    return null;
  }
}

