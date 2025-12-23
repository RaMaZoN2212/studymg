import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import '../models/homework.dart';
import '../providers/homework_provider.dart';
import '../screens/add_homework_screen.dart';
import '../theme/app_theme.dart';

class HomeworkCard extends StatelessWidget {
  final Homework homework;

  const HomeworkCard({super.key, required this.homework});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final isOverdue = homework.dueDate.isBefore(now) && !homework.isCompleted;
    final daysUntilDue = homework.dueDate.difference(now).inDays;
    final isUrgent = daysUntilDue <= 1 && !homework.isCompleted;

    return Slidable(
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        extentRatio: 0.4,
        children: [
          SlidableAction(
            onPressed: (context) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddHomeworkScreen(homework: homework),
                ),
              );
            },
            backgroundColor: AppTheme.textSecondary,
            foregroundColor: Colors.white,
            icon: Icons.edit_outlined,
            label: 'Изменить',
          ),
          SlidableAction(
            onPressed: (context) {
              context.read<HomeworkProvider>().deleteHomework(homework.id);
            },
            backgroundColor: AppTheme.textPrimary,
            foregroundColor: Colors.white,
            icon: Icons.delete_outline,
            label: 'Удалить',
          ),
        ],
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: AppTheme.space3),
        decoration: BoxDecoration(
          color: AppTheme.surfaceColor,
          borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
          boxShadow: AppTheme.shadowSmall,
          border: (isOverdue || isUrgent)
              ? Border.all(color: AppTheme.textPrimary, width: 1.5)
              : null,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              context.read<HomeworkProvider>().toggleHomeworkStatus(homework.id);
            },
            borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
            child: Padding(
              padding: const EdgeInsets.all(AppTheme.space5),
              child: Row(
                children: [
                  // Custom Checkbox
                  GestureDetector(
                    onTap: () {
                      context
                          .read<HomeworkProvider>()
                          .toggleHomeworkStatus(homework.id);
                    },
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: homework.isCompleted
                            ? AppTheme.textPrimary
                            : Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: homework.isCompleted
                              ? AppTheme.textPrimary
                              : AppTheme.textSecondary,
                          width: 2,
                        ),
                      ),
                      child: homework.isCompleted
                          ? const Icon(
                              Icons.check,
                              size: 16,
                              color: Colors.white,
                            )
                          : null,
                    ),
                  ),
                  
                  const SizedBox(width: AppTheme.space4),
                  
                  // Content
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          homework.title,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            decoration: homework.isCompleted
                                ? TextDecoration.lineThrough
                                : null,
                            color: homework.isCompleted
                                ? AppTheme.textTertiary
                                : AppTheme.textPrimary,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: AppTheme.space1),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '${homework.courseName} · ${DateFormat('d MMM', 'ru_RU').format(homework.dueDate)}',
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: isOverdue
                                      ? AppTheme.textPrimary
                                      : AppTheme.textSecondary,
                                  fontWeight: isOverdue ? FontWeight.w600 : null,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        if (homework.description != null) ...[
                          const SizedBox(height: AppTheme.space2),
                          Text(
                            homework.description!,
                            style: Theme.of(context).textTheme.bodySmall,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ],
                    ),
                  ),
                  
                  const SizedBox(width: AppTheme.space3),
                  
                  // Status badge
                  if (!homework.isCompleted)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppTheme.space2,
                        vertical: AppTheme.space1,
                      ),
                      decoration: BoxDecoration(
                        color: (isOverdue || isUrgent)
                            ? AppTheme.textPrimary
                            : AppTheme.backgroundColor,
                        borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
                      ),
                      child: Text(
                        _getDueDateText(daysUntilDue, isOverdue),
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: (isOverdue || isUrgent)
                              ? Colors.white
                              : AppTheme.textSecondary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _getDueDateText(int daysUntilDue, bool isOverdue) {
    if (isOverdue) return 'Просрочено';
    if (daysUntilDue == 0) return 'Сегодня';
    if (daysUntilDue == 1) return 'Завтра';
    return '$daysUntilDue дн.';
  }
}
