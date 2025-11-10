import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import '../models/homework.dart';
import '../models/course.dart';
import '../providers/homework_provider.dart';
import '../providers/course_provider.dart';

class AddHomeworkScreen extends StatefulWidget {
  final Homework? homework;

  const AddHomeworkScreen({super.key, this.homework});

  @override
  State<AddHomeworkScreen> createState() => _AddHomeworkScreenState();
}

class _AddHomeworkScreenState extends State<AddHomeworkScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  Course? _selectedCourse;
  DateTime? _dueDate;

  @override
  void initState() {
    super.initState();
    if (widget.homework != null) {
      _titleController.text = widget.homework!.title;
      _descriptionController.text = widget.homework!.description ?? '';
      _dueDate = widget.homework!.dueDate;
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  // 获取唯一的课程列表（按课程名称去重）
  List<Course> _getUniqueCourses(List<Course> courses) {
    final seenNames = <String>{};
    final uniqueCourses = <Course>[];
    
    for (final course in courses) {
      if (!seenNames.contains(course.name)) {
        seenNames.add(course.name);
        uniqueCourses.add(course);
      }
    }
    
    return uniqueCourses;
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.homework != null;
    final courseProvider = context.watch<CourseProvider>();
    
    // Set initial course if editing
    if (isEditing && _selectedCourse == null) {
      _selectedCourse = courseProvider.getCourseById(widget.homework!.courseId);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? 'Редактировать задание' : 'Новое задание'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            DropdownButtonFormField<Course>(
              value: _selectedCourse,
              decoration: const InputDecoration(
                labelText: 'Курс *',
                prefixIcon: Icon(Icons.school),
              ),
              items: _getUniqueCourses(courseProvider.sortedCourses).map((course) {
                return DropdownMenuItem(
                  value: course,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Color(course.color),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Flexible(
                        child: Text(
                          course.name,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (course) {
                setState(() {
                  _selectedCourse = course;
                  if (course != null) {
                    final nextClass = courseProvider.getNextClassDate(course);
                    if (nextClass != null && _dueDate == null) {
                      _dueDate = nextClass;
                    }
                  }
                });
              },
              validator: (value) {
                if (value == null) {
                  return 'Пожалуйста, выберите курс';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Название задания *',
                hintText: 'Например: Решить задачи 1-10',
                prefixIcon: Icon(Icons.assignment),
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
                hintText: 'Дополнительная информация',
                prefixIcon: Icon(Icons.description),
              ),
              maxLines: 4,
            ),
            const SizedBox(height: 16),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.grey[300]!),
              ),
              leading: const Icon(Icons.calendar_today),
              title: const Text('Срок сдачи *'),
              subtitle: _dueDate != null
                  ? Text(
                      '${_dueDate!.day}.${_dueDate!.month}.${_dueDate!.year}',
                    )
                  : const Text('Выберите дату'),
              onTap: _selectDueDate,
            ),
            if (_dueDate == null)
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 8),
                child: Text(
                  'Пожалуйста, выберите дату',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                    fontSize: 12,
                  ),
                ),
              ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: _saveHomework,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                isEditing ? 'Сохранить изменения' : 'Создать задание',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDueDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _dueDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      locale: const Locale('ru', 'RU'),
    );

    if (picked != null) {
      setState(() {
        _dueDate = picked;
      });
    }
  }

  void _saveHomework() {
    if (_formKey.currentState!.validate() &&
        _selectedCourse != null &&
        _dueDate != null) {
      final homework = Homework(
        id: widget.homework?.id ?? const Uuid().v4(),
        courseId: _selectedCourse!.id,
        courseName: _selectedCourse!.name,
        title: _titleController.text,
        description: _descriptionController.text.isNotEmpty
            ? _descriptionController.text
            : null,
        dueDate: _dueDate!,
        isCompleted: widget.homework?.isCompleted ?? false,
        createdAt: widget.homework?.createdAt ?? DateTime.now(),
        courseColor: _selectedCourse!.color,
      );

      final homeworkProvider = context.read<HomeworkProvider>();
      if (widget.homework != null) {
        homeworkProvider.updateHomework(homework);
      } else {
        homeworkProvider.addHomework(homework);
      }

      Navigator.pop(context);
    }
  }
}

