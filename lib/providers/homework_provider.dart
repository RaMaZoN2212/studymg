import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/homework.dart';

class HomeworkProvider extends ChangeNotifier {
  late Box<Homework> _homeworkBox;
  List<Homework> _homeworks = [];

  HomeworkProvider() {
    _homeworkBox = Hive.box<Homework>('homework');
    _loadHomework();
  }

  List<Homework> get homeworks => _homeworks;

  // 所有作业，按截止日期排序
  List<Homework> get allHomework {
    return _homeworks.toList()
      ..sort((a, b) {
        // 未完成的排在前面
        if (a.isCompleted != b.isCompleted) {
          return a.isCompleted ? 1 : -1;
        }
        // 按截止日期排序
        return a.dueDate.compareTo(b.dueDate);
      });
  }

  List<Homework> get pendingHomework {
    return _homeworks.where((hw) => !hw.isCompleted).toList()
      ..sort((a, b) => a.dueDate.compareTo(b.dueDate));
  }

  List<Homework> get completedHomework {
    return _homeworks.where((hw) => hw.isCompleted).toList()
      ..sort((a, b) => b.dueDate.compareTo(a.dueDate));
  }

  int get pendingCount => _homeworks.where((hw) => !hw.isCompleted).length;

  void _loadHomework() {
    _homeworks = _homeworkBox.values.toList();
    notifyListeners();
  }

  Future<void> addHomework(Homework homework) async {
    await _homeworkBox.put(homework.id, homework);
    _loadHomework();
  }

  Future<void> updateHomework(Homework homework) async {
    await _homeworkBox.put(homework.id, homework);
    _loadHomework();
  }

  Future<void> deleteHomework(String id) async {
    await _homeworkBox.delete(id);
    _loadHomework();
  }

  Future<void> toggleHomeworkStatus(String id) async {
    final homework = _homeworks.firstWhere((hw) => hw.id == id);
    final updated = homework.copyWith(isCompleted: !homework.isCompleted);
    await updateHomework(updated);
  }

  List<Homework> getHomeworkByCourse(String courseId) {
    return _homeworks.where((hw) => hw.courseId == courseId).toList()
      ..sort((a, b) => a.dueDate.compareTo(b.dueDate));
  }

  List<Homework> getOverdueHomework() {
    final now = DateTime.now();
    return _homeworks.where((hw) => 
      !hw.isCompleted && hw.dueDate.isBefore(now)
    ).toList();
  }
}

