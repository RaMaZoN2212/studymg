import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:provider/provider.dart';
import '../models/formula.dart';
import '../providers/favorites_provider.dart';
import '../screens/formula_detail_screen.dart';
import '../theme/app_theme.dart';

class FormulaCard extends StatelessWidget {
  final Formula formula;

  const FormulaCard({super.key, required this.formula});

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = context.watch<FavoritesProvider>();
    final isFavorite = favoritesProvider.isFavorite(formula.id);

    return Container(
      margin: const EdgeInsets.only(bottom: AppTheme.space4),
      decoration: BoxDecoration(
        color: AppTheme.surfaceColor,
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
        boxShadow: AppTheme.shadowSmall,
        border: isFavorite
            ? Border.all(color: AppTheme.textPrimary, width: 1.5)
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FormulaDetailScreen(formula: formula),
              ),
            );
          },
          borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
          child: Padding(
            padding: const EdgeInsets.all(AppTheme.space5),
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Expanded(
                child: Text(
                  formula.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              IconButton(
                onPressed: () {
                  favoritesProvider.toggleFavorite(formula.id);
                },
                icon: Icon(
                  isFavorite ? Icons.star : Icons.star_outline,
                  color: isFavorite
                      ? AppTheme.textPrimary
                      : AppTheme.textSecondary,
                ),
                style: IconButton.styleFrom(
                  backgroundColor: isFavorite
                      ? AppTheme.backgroundColor
                      : Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
                  ),
                ),
              ),
            ],
          ),
          
          const SizedBox(height: AppTheme.space4),
          
          // Formula with smart sizing
          _buildSmartFormula(context, formula.latex),
          
          // Description
          if (formula.description != null) ...[
            const SizedBox(height: AppTheme.space4),
            Container(
              padding: const EdgeInsets.all(AppTheme.space4),
              decoration: BoxDecoration(
                color: AppTheme.backgroundColor,
                borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.info_outline,
                    size: 16,
                    color: AppTheme.textSecondary,
                  ),
                  const SizedBox(width: AppTheme.space2),
                  Expanded(
                    child: Text(
                      formula.description!,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
            ),
          ),
        ),
      ),
    );
  }

  /// Умное отображение формулы с автоматическим выбором размера
  Widget _buildSmartFormula(BuildContext context, String latex) {
    final screenWidth = MediaQuery.of(context).size.width;
    final availableWidth = screenWidth - 80; // Минус отступы
    
    // Оценка ширины формулы (примерно 12 пикселей на символ)
    final estimatedWidth = latex.length * 12.0;
    
    double fontSize;
    bool needsScroll = false;
    
    if (estimatedWidth < availableWidth * 0.8) {
      // Короткая формула - нормальный размер (20px)
      fontSize = 20;
    } else if (estimatedWidth < availableWidth * 1.2) {
      // Средняя формула - немного меньше (18px)
      fontSize = 18;
    } else if (estimatedWidth < availableWidth * 1.5) {
      // Длинная формула - еще меньше (16px)
      fontSize = 16;
    } else {
      // Очень длинная формула - используем прокрутку с нормальным размером
      fontSize = 20;
      needsScroll = true;
    }
    
    final formulaWidget = Math.tex(
      latex,
      textStyle: TextStyle(
        fontSize: fontSize,
        color: AppTheme.textPrimary,
      ),
    );
    
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppTheme.space6),
      decoration: BoxDecoration(
        color: AppTheme.backgroundColor,
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
      ),
      child: needsScroll
          ? SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Container(
                constraints: BoxConstraints(
                  minWidth: availableWidth,
                ),
                child: Center(child: formulaWidget),
              ),
            )
          : Center(child: formulaWidget),
    );
  }
}
