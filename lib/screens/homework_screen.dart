import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../models/homework.dart';
import '../providers/homework_provider.dart';
import '../widgets/homework_card.dart';
import '../theme/app_theme.dart';
import 'add_homework_screen.dart';

class HomeworkScreen extends StatefulWidget {
  const HomeworkScreen({super.key});

  @override
  State<HomeworkScreen> createState() => _HomeworkScreenState();
}

class _HomeworkScreenState extends State<HomeworkScreen> {
  bool _showCompletedOnly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(AppTheme.space6),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Задания',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(height: AppTheme.space1),
                        Consumer<HomeworkProvider>(
                          builder: (context, provider, _) {
                            return Text(
                              '${provider.pendingCount} активных',
                              style: Theme.of(context).textTheme.bodyMedium,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  // Filter button
                  Consumer<HomeworkProvider>(
                    builder: (context, provider, _) {
                      if (provider.completedHomework.isEmpty) {
                        return const SizedBox.shrink();
                      }
                      return IconButton(
                        onPressed: () {
                          setState(() {
                            _showCompletedOnly = !_showCompletedOnly;
                          });
                        },
                        icon: Icon(
                          _showCompletedOnly
                              ? Icons.checklist
                              : Icons.checklist_rtl,
                        ),
                        style: IconButton.styleFrom(
                          backgroundColor: _showCompletedOnly
                              ? AppTheme.textPrimary
                              : AppTheme.backgroundColor,
                          foregroundColor: _showCompletedOnly
                              ? Colors.white
                              : AppTheme.textPrimary,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(AppTheme.radiusMedium),
                          ),
                        ),
                        tooltip: _showCompletedOnly
                            ? 'Показать все'
                            : 'Показать выполненные',
                      );
                    },
                  ),
                ],
              ),
            ),

            // Homework list
            Expanded(
              child: Consumer<HomeworkProvider>(
                builder: (context, homeworkProvider, child) {
                  // Get filtered homework
                  List<Homework> homeworkList;
                  if (_showCompletedOnly) {
                    homeworkList = homeworkProvider.completedHomework;
                  } else {
                    homeworkList = homeworkProvider.allHomework;
                  }

                  if (homeworkList.isEmpty) {
                    return _buildEmptyState();
                  }

                  // Group homework by status and date
                  final groupedHomework = _groupHomework(homeworkList);

                  return ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppTheme.space6,
                    ),
                    itemCount: groupedHomework.length,
                    itemBuilder: (context, index) {
                      final group = groupedHomework[index];
                      return _buildHomeworkGroup(
                        context,
                        group['title'] as String,
                        group['homework'] as List<Homework>,
                        group['isOverdue'] as bool,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddHomeworkScreen(),
            ),
          );
        },
        backgroundColor: AppTheme.accentColor,
        foregroundColor: Colors.white,
        icon: const Icon(Icons.add),
        label: const Text('Добавить'),
        elevation: 2,
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            _showCompletedOnly
                ? Icons.check_circle_outline
                : Icons.assignment_outlined,
            size: 64,
            color: AppTheme.textTertiary,
          ),
          const SizedBox(height: AppTheme.space4),
          Text(
            _showCompletedOnly
                ? 'Нет выполненных заданий'
                : 'Нет заданий',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: AppTheme.space1),
          Text(
            _showCompletedOnly
                ? 'Выполненные задания появятся здесь'
                : 'Добавьте первое задание',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  List<Map<String, dynamic>> _groupHomework(List<Homework> homeworkList) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);

    // Separate into categories
    final overdue = <Homework>[];
    final todayList = <Homework>[];
    final thisWeek = <Homework>[];
    final later = <Homework>[];
    final completed = <Homework>[];

    for (final hw in homeworkList) {
      if (hw.isCompleted) {
        completed.add(hw);
      } else {
        final dueDate = DateTime(
          hw.dueDate.year,
          hw.dueDate.month,
          hw.dueDate.day,
        );

        if (dueDate.isBefore(today)) {
          overdue.add(hw);
        } else if (dueDate.isAtSameMomentAs(today)) {
          todayList.add(hw);
        } else if (dueDate.isBefore(today.add(const Duration(days: 7)))) {
          thisWeek.add(hw);
        } else {
          later.add(hw);
        }
      }
    }

    // Build groups
    final groups = <Map<String, dynamic>>[];

    if (overdue.isNotEmpty) {
      groups.add({
        'title': 'Просрочено',
        'homework': overdue,
        'isOverdue': true,
      });
    }

    if (todayList.isNotEmpty) {
      groups.add({
        'title': 'Сегодня',
        'homework': todayList,
        'isOverdue': false,
      });
    }

    if (thisWeek.isNotEmpty) {
      groups.add({
        'title': 'На этой неделе',
        'homework': thisWeek,
        'isOverdue': false,
      });
    }

    if (later.isNotEmpty) {
      groups.add({
        'title': 'Позже',
        'homework': later,
        'isOverdue': false,
      });
    }

    if (completed.isNotEmpty && !_showCompletedOnly) {
      groups.add({
        'title': 'Выполнено',
        'homework': completed,
        'isOverdue': false,
      });
    }

    return groups;
  }

  Widget _buildHomeworkGroup(
    BuildContext context,
    String title,
    List<Homework> homeworkList,
    bool isOverdue,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppTheme.space4),
        // Group header
        Padding(
          padding: const EdgeInsets.only(bottom: AppTheme.space3),
          child: Row(
            children: [
              Container(
                width: 4,
                height: 20,
                decoration: BoxDecoration(
                  color: isOverdue
                      ? AppTheme.textPrimary
                      : AppTheme.textSecondary,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: AppTheme.space2),
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: isOverdue
                          ? AppTheme.textPrimary
                          : AppTheme.textSecondary,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(width: AppTheme.space2),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppTheme.space2,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: isOverdue
                      ? AppTheme.textPrimary
                      : AppTheme.backgroundColor,
                  borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
                ),
                child: Text(
                  '${homeworkList.length}',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: isOverdue
                            ? Colors.white
                            : AppTheme.textSecondary,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ],
          ),
        ),
        // Homework items
        ...homeworkList.map((hw) => HomeworkCard(homework: hw)),
        const SizedBox(height: AppTheme.space2),
      ],
    );
  }
}
