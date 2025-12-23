import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import '../models/course.dart';
import '../providers/course_provider.dart';
import '../theme/app_theme.dart';

class AddCourseScreen extends StatefulWidget {
  final Course? course;

  const AddCourseScreen({super.key, this.course});

  @override
  State<AddCourseScreen> createState() => _AddCourseScreenState();
}

class _AddCourseScreenState extends State<AddCourseScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _teacherController = TextEditingController();
  final _roomController = TextEditingController();
  final _timeController = TextEditingController();

  List<Weekday> _selectedWeekdays = [];
  int _selectedColorIndex = 0;

  @override
  void initState() {
    super.initState();
    if (widget.course != null) {
      _nameController.text = widget.course!.name;
      _descriptionController.text = widget.course!.description ?? '';
      _teacherController.text = widget.course!.teacher ?? '';
      _roomController.text = widget.course!.room ?? '';
      _timeController.text = widget.course!.time ?? '';
      _selectedWeekdays = List.from(widget.course!.weekdays);
      _selectedColorIndex = AppTheme.courseColors.indexOf(
        Color(widget.course!.color),
      );
      if (_selectedColorIndex == -1) _selectedColorIndex = 0;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _teacherController.dispose();
    _roomController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.course != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? 'Редактировать курс' : 'Новый курс'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Название курса *',
                hintText: 'Например: Математика',
                prefixIcon: Icon(Icons.book),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Пожалуйста, введите название';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Описание',
                hintText: 'Краткое описание курса',
                prefixIcon: Icon(Icons.description),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _teacherController,
              decoration: const InputDecoration(
                labelText: 'Преподаватель',
                hintText: 'Имя преподавателя',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _roomController,
              decoration: const InputDecoration(
                labelText: 'Аудитория',
                hintText: 'Номер аудитории',
                prefixIcon: Icon(Icons.room),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _timeController,
              decoration: const InputDecoration(
                labelText: 'Время',
                hintText: 'Например: 10:00 - 11:30',
                prefixIcon: Icon(Icons.access_time),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Дни недели *',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: Weekday.values.map((weekday) {
                final isSelected = _selectedWeekdays.contains(weekday);
                return FilterChip(
                  label: Text(weekday.shortName),
                  selected: isSelected,
                  onSelected: (selected) {
                    setState(() {
                      if (selected) {
                        _selectedWeekdays.add(weekday);
                      } else {
                        _selectedWeekdays.remove(weekday);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            if (_selectedWeekdays.isEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'Выберите хотя бы один день',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                    fontSize: 12,
                  ),
                ),
              ),
            const SizedBox(height: 24),
            const Text(
              'Цвет',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: List.generate(
                AppTheme.courseColors.length,
                (index) {
                  final isSelected = _selectedColorIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedColorIndex = index;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppTheme.courseColors[index],
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: isSelected ? Colors.black : Colors.transparent,
                          width: 3,
                        ),
                      ),
                      child: isSelected
                          ? const Icon(Icons.check, color: Colors.white)
                          : null,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: _saveCourse,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                isEditing ? 'Сохранить изменения' : 'Создать курс',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _saveCourse() {
    if (_formKey.currentState!.validate() && _selectedWeekdays.isNotEmpty) {
      final course = Course(
        id: widget.course?.id ?? const Uuid().v4(),
        name: _nameController.text,
        description: _descriptionController.text.isNotEmpty
            ? _descriptionController.text
            : null,
        teacher: _teacherController.text.isNotEmpty
            ? _teacherController.text
            : null,
        room: _roomController.text.isNotEmpty ? _roomController.text : null,
        weekdays: _selectedWeekdays,
        time: _timeController.text.isNotEmpty ? _timeController.text : null,
        color: AppTheme.courseColors[_selectedColorIndex].toARGB32(),
        createdAt: widget.course?.createdAt ?? DateTime.now(),
      );

      final courseProvider = context.read<CourseProvider>();
      if (widget.course != null) {
        courseProvider.updateCourse(course);
      } else {
        courseProvider.addCourse(course);
      }

      Navigator.pop(context);
    }
  }
}

