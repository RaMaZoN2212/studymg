import 'package:hive/hive.dart';

part 'course.g.dart';

@HiveType(typeId: 0)
enum Weekday {
  @HiveField(0)
  monday,
  @HiveField(1)
  tuesday,
  @HiveField(2)
  wednesday,
  @HiveField(3)
  thursday,
  @HiveField(4)
  friday,
  @HiveField(5)
  saturday,
  @HiveField(6)
  sunday,
}

extension WeekdayExtension on Weekday {
  String get displayName {
    switch (this) {
      case Weekday.monday:
        return 'Понедельник';
      case Weekday.tuesday:
        return 'Вторник';
      case Weekday.wednesday:
        return 'Среда';
      case Weekday.thursday:
        return 'Четверг';
      case Weekday.friday:
        return 'Пятница';
      case Weekday.saturday:
        return 'Суббота';
      case Weekday.sunday:
        return 'Воскресенье';
    }
  }
  
  String get shortName {
    switch (this) {
      case Weekday.monday:
        return 'Пн';
      case Weekday.tuesday:
        return 'Вт';
      case Weekday.wednesday:
        return 'Ср';
      case Weekday.thursday:
        return 'Чт';
      case Weekday.friday:
        return 'Пт';
      case Weekday.saturday:
        return 'Сб';
      case Weekday.sunday:
        return 'Вс';
    }
  }
}

@HiveType(typeId: 1)
class Course extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String? description;

  @HiveField(3)
  String? teacher;

  @HiveField(4)
  String? room;

  @HiveField(5)
  List<Weekday> weekdays;

  @HiveField(6)
  String? time;

  @HiveField(7)
  int color;

  @HiveField(8)
  DateTime createdAt;

  Course({
    required this.id,
    required this.name,
    this.description,
    this.teacher,
    this.room,
    required this.weekdays,
    this.time,
    required this.color,
    required this.createdAt,
  });

  Course copyWith({
    String? id,
    String? name,
    String? description,
    String? teacher,
    String? room,
    List<Weekday>? weekdays,
    String? time,
    int? color,
    DateTime? createdAt,
  }) {
    return Course(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      teacher: teacher ?? this.teacher,
      room: room ?? this.room,
      weekdays: weekdays ?? this.weekdays,
      time: time ?? this.time,
      color: color ?? this.color,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

