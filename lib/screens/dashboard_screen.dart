import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../models/course.dart';
import '../models/homework.dart';
import '../providers/course_provider.dart';
import '../providers/homework_provider.dart';
import '../theme/app_theme.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final today = now.weekday <= 6 ? Weekday.values[now.weekday - 1] : Weekday.monday;
    
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Simple Header
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppTheme.space6,
                  AppTheme.space6,
                  AppTheme.space6,
                  AppTheme.space4,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _getGreeting(),
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    const SizedBox(height: AppTheme.space1),
                    Text(
                      DateFormat('EEEE, d MMMM', 'ru_RU').format(now),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            
            // Quick Stats
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppTheme.space6),
                child: _buildQuickStats(context),
              ),
            ),
            
            const SliverToBoxAdapter(child: SizedBox(height: AppTheme.space8)),
            
            // Today's Schedule Section
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppTheme.space6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Сегодня',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      DateFormat('d MMM', 'ru_RU').format(now),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            
            const SliverToBoxAdapter(child: SizedBox(height: AppTheme.space4)),
            
            SliverToBoxAdapter(
              child: _buildTodaySchedule(context, today),
            ),
            
            const SliverToBoxAdapter(child: SizedBox(height: AppTheme.space8)),
            
            // Upcoming Homework Section
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppTheme.space6),
                child: Text(
                  'Предстоящие задания',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
            
            const SliverToBoxAdapter(child: SizedBox(height: AppTheme.space4)),
            
            SliverToBoxAdapter(
              child: _buildUpcomingHomework(context),
            ),
            
            const SliverToBoxAdapter(child: SizedBox(height: AppTheme.space8)),
          ],
        ),
      ),
    );
  }
  
  String _getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) return 'Доброе утро';
    if (hour < 18) return 'Добрый день';
    return 'Добрый вечер';
  }
  
  Widget _buildQuickStats(BuildContext context) {
    final courseProvider = context.watch<CourseProvider>();
    final homeworkProvider = context.watch<HomeworkProvider>();
    
    return Row(
      children: [
        Expanded(
          child: _buildStatCard(
            context,
            icon: Icons.school_outlined,
            value: '${courseProvider.courses.length}',
            label: 'Курсов',
          ),
        ),
        const SizedBox(width: AppTheme.space3),
        Expanded(
          child: _buildStatCard(
            context,
            icon: Icons.assignment_outlined,
            value: '${homeworkProvider.pendingCount}',
            label: 'Заданий',
          ),
        ),
      ],
    );
  }
  
  Widget _buildStatCard(
    BuildContext context, {
    required IconData icon,
    required String value,
    required String label,
  }) {
    return Container(
      padding: const EdgeInsets.all(AppTheme.space5),
      decoration: BoxDecoration(
        color: AppTheme.surfaceColor,
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
        boxShadow: AppTheme.shadowSmall,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 28, color: AppTheme.textPrimary),
          const SizedBox(height: AppTheme.space3),
          Text(
            value,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: AppTheme.space1),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
  
  Widget _buildTodaySchedule(BuildContext context, Weekday today) {
    final courseProvider = context.watch<CourseProvider>();
    final todayCourses = courseProvider.getCoursesByWeekday(today);
    
    if (todayCourses.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppTheme.space6),
        child: Container(
          padding: const EdgeInsets.all(AppTheme.space8),
          decoration: BoxDecoration(
            color: AppTheme.surfaceColor,
            borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
            boxShadow: AppTheme.shadowSmall,
          ),
          child: Center(
            child: Column(
              children: [
                Icon(
                  Icons.event_available_outlined,
                  size: 48,
                  color: AppTheme.textTertiary,
                ),
                const SizedBox(height: AppTheme.space3),
                Text(
                  'Нет занятий',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: AppTheme.space1),
                Text(
                  'Свободный день',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      );
    }
    
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: AppTheme.space6),
      itemCount: todayCourses.length,
      separatorBuilder: (_, __) => const SizedBox(height: AppTheme.space3),
      itemBuilder: (context, index) {
        final course = todayCourses[index];
        return _buildCourseCard(context, course);
      },
    );
  }
  
  Widget _buildCourseCard(BuildContext context, Course course) {
    return Container(
      padding: const EdgeInsets.all(AppTheme.space5),
      decoration: BoxDecoration(
        color: AppTheme.surfaceColor,
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
        boxShadow: AppTheme.shadowSmall,
      ),
      child: Row(
        children: [
          // Time
          if (course.time != null)
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: AppTheme.backgroundColor,
                borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    course.time!.split(' ')[0],
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppTheme.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
          
          SizedBox(width: course.time != null ? AppTheme.space4 : 0),
          
          // Course info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course.name,
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                if (course.teacher != null || course.room != null) ...[
                  const SizedBox(height: AppTheme.space1),
                  Row(
                    children: [
                      if (course.teacher != null) ...[
                        Icon(
                          Icons.person_outline,
                          size: 14,
                          color: AppTheme.textSecondary,
                        ),
                        const SizedBox(width: 4),
                        Flexible(
                          child: Text(
                            course.teacher!,
                            style: Theme.of(context).textTheme.bodySmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                      if (course.teacher != null && course.room != null)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            '·',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      if (course.room != null) ...[
                        Icon(
                          Icons.room_outlined,
                          size: 14,
                          color: AppTheme.textSecondary,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          course.room!,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ],
                  ),
                ],
              ],
            ),
          ),
          
          // Arrow
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 16,
            color: AppTheme.textTertiary,
          ),
        ],
      ),
    );
  }
  
  Widget _buildUpcomingHomework(BuildContext context) {
    final homeworkProvider = context.watch<HomeworkProvider>();
    final upcomingHomework = homeworkProvider.pendingHomework.take(3).toList();
    
    if (upcomingHomework.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppTheme.space6),
        child: Container(
          padding: const EdgeInsets.all(AppTheme.space8),
          decoration: BoxDecoration(
            color: AppTheme.surfaceColor,
            borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
            boxShadow: AppTheme.shadowSmall,
          ),
          child: Center(
            child: Column(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 48,
                  color: AppTheme.textTertiary,
                ),
                const SizedBox(height: AppTheme.space3),
                Text(
                  'Все задания выполнены',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: AppTheme.space1),
                Text(
                  'Отличная работа!',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      );
    }
    
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: AppTheme.space6),
      itemCount: upcomingHomework.length,
      separatorBuilder: (_, __) => const SizedBox(height: AppTheme.space3),
      itemBuilder: (context, index) {
        return _buildHomeworkCard(context, upcomingHomework[index]);
      },
    );
  }
  
  Widget _buildHomeworkCard(BuildContext context, Homework homework) {
    final now = DateTime.now();
    final daysUntilDue = homework.dueDate.difference(now).inDays;
    final isUrgent = daysUntilDue <= 1;
    final isOverdue = homework.dueDate.isBefore(now);
    
    return Container(
      padding: const EdgeInsets.all(AppTheme.space5),
      decoration: BoxDecoration(
        color: AppTheme.surfaceColor,
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
        boxShadow: AppTheme.shadowSmall,
        border: isUrgent || isOverdue
            ? Border.all(color: AppTheme.textPrimary, width: 1.5)
            : null,
      ),
      child: Row(
        children: [
          // Checkbox
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppTheme.textSecondary,
                width: 2,
              ),
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
                  style: Theme.of(context).textTheme.titleMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: AppTheme.space1),
                Text(
                  homework.courseName,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          
          const SizedBox(width: AppTheme.space3),
          
          // Due date badge
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppTheme.space3,
              vertical: AppTheme.space1,
            ),
            decoration: BoxDecoration(
              color: isUrgent || isOverdue
                  ? AppTheme.textPrimary
                  : AppTheme.backgroundColor,
              borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
            ),
            child: Text(
              _getDueDateText(daysUntilDue, isOverdue),
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: isUrgent || isOverdue
                    ? Colors.white
                    : AppTheme.textSecondary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
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
