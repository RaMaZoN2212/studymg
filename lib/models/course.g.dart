// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeekdayAdapter extends TypeAdapter<Weekday> {
  @override
  final int typeId = 0;

  @override
  Weekday read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Weekday.monday;
      case 1:
        return Weekday.tuesday;
      case 2:
        return Weekday.wednesday;
      case 3:
        return Weekday.thursday;
      case 4:
        return Weekday.friday;
      case 5:
        return Weekday.saturday;
      case 6:
        return Weekday.sunday;
      default:
        return Weekday.monday;
    }
  }

  @override
  void write(BinaryWriter writer, Weekday obj) {
    switch (obj) {
      case Weekday.monday:
        writer.writeByte(0);
        break;
      case Weekday.tuesday:
        writer.writeByte(1);
        break;
      case Weekday.wednesday:
        writer.writeByte(2);
        break;
      case Weekday.thursday:
        writer.writeByte(3);
        break;
      case Weekday.friday:
        writer.writeByte(4);
        break;
      case Weekday.saturday:
        writer.writeByte(5);
        break;
      case Weekday.sunday:
        writer.writeByte(6);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeekdayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CourseAdapter extends TypeAdapter<Course> {
  @override
  final int typeId = 1;

  @override
  Course read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Course(
      id: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String?,
      teacher: fields[3] as String?,
      room: fields[4] as String?,
      weekdays: (fields[5] as List).cast<Weekday>(),
      time: fields[6] as String?,
      color: fields[7] as int,
      createdAt: fields[8] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Course obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.teacher)
      ..writeByte(4)
      ..write(obj.room)
      ..writeByte(5)
      ..write(obj.weekdays)
      ..writeByte(6)
      ..write(obj.time)
      ..writeByte(7)
      ..write(obj.color)
      ..writeByte(8)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

