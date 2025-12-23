import 'package:hive/hive.dart';

part 'homework.g.dart';

@HiveType(typeId: 2)
class Homework extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String courseId;

  @HiveField(2)
  String courseName;

  @HiveField(3)
  String title;

  @HiveField(4)
  String? description;

  @HiveField(5)
  DateTime dueDate;

  @HiveField(6)
  bool isCompleted;

  @HiveField(7)
  DateTime createdAt;

  @HiveField(8)
  int courseColor;

  Homework({
    required this.id,
    required this.courseId,
    required this.courseName,
    required this.title,
    this.description,
    required this.dueDate,
    this.isCompleted = false,
    required this.createdAt,
    required this.courseColor,
  });

  Homework copyWith({
    String? id,
    String? courseId,
    String? courseName,
    String? title,
    String? description,
    DateTime? dueDate,
    bool? isCompleted,
    DateTime? createdAt,
    int? courseColor,
  }) {
    return Homework(
      id: id ?? this.id,
      courseId: courseId ?? this.courseId,
      courseName: courseName ?? this.courseName,
      title: title ?? this.title,
      description: description ?? this.description,
      dueDate: dueDate ?? this.dueDate,
      isCompleted: isCompleted ?? this.isCompleted,
      createdAt: createdAt ?? this.createdAt,
      courseColor: courseColor ?? this.courseColor,
    );
  }
}

