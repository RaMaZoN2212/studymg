import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/formula.dart';
import '../data/formulas_data.dart';
import '../widgets/formula_card.dart';
import '../providers/favorites_provider.dart';
import '../theme/app_theme.dart';

class FormulasScreen extends StatefulWidget {
  const FormulasScreen({super.key});

  @override
  State<FormulasScreen> createState() => _FormulasScreenState();
}

class _FormulasScreenState extends State<FormulasScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _searchController.addListener(() {
      setState(() {
        _searchQuery = _searchController.text.toLowerCase();
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  List<Formula> _filterFormulas(List<Formula> formulas) {
    if (_searchQuery.isEmpty) return formulas;
    return formulas.where((formula) {
      return formula.title.toLowerCase().contains(_searchQuery) ||
          (formula.description?.toLowerCase().contains(_searchQuery) ?? false);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppTheme.space6),
              child: Text(
                'Формулы',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            
            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppTheme.space6),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
                  boxShadow: AppTheme.shadowSmall,
                ),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Поиск формул...',
                    hintStyle: TextStyle(color: AppTheme.textTertiary),
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppTheme.textSecondary,
                    ),
                    suffixIcon: _searchQuery.isNotEmpty
                        ? IconButton(
                            icon: Icon(
                              Icons.clear,
                              color: AppTheme.textSecondary,
                            ),
                            onPressed: () {
                              _searchController.clear();
                            },
                          )
                        : null,
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: AppTheme.space4),
            
            Container(
              margin: const EdgeInsets.symmetric(horizontal: AppTheme.space6),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
                boxShadow: AppTheme.shadowSmall,
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  color: AppTheme.textPrimary,
                  borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                labelColor: Colors.white,
                unselectedLabelColor: AppTheme.textSecondary,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
                tabs: const [
                  Tab(text: 'Избранное'),
                  Tab(text: 'Математика'),
                  Tab(text: 'Физика'),
                ],
              ),
            ),
            
            const SizedBox(height: AppTheme.space6),
            
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildFavoritesList(),
                  _buildFormulaList(FormulasData.mathematicsFormulas),
                  _buildFormulaList(FormulasData.physicsFormulas),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFavoritesList() {
    return Consumer<FavoritesProvider>(
      builder: (context, favoritesProvider, child) {
        final allFormulas = [
          ...FormulasData.mathematicsFormulas,
          ...FormulasData.physicsFormulas,
        ];
        
        final favoriteFormulas = _filterFormulas(
          allFormulas.where((f) => favoritesProvider.isFavorite(f.id)).toList(),
        );

        if (favoriteFormulas.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppTheme.backgroundColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.star_outline,
                    size: 48,
                    color: AppTheme.textTertiary,
                  ),
                ),
                const SizedBox(height: AppTheme.space4),
                Text(
                  _searchQuery.isEmpty
                      ? 'Нет избранных формул'
                      : 'Ничего не найдено',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: AppTheme.textPrimary,
                      ),
                ),
                const SizedBox(height: AppTheme.space2),
                Text(
                  _searchQuery.isEmpty
                      ? 'Добавьте формулы в избранное'
                      : 'Попробуйте другой запрос',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppTheme.textSecondary,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: AppTheme.space6),
          itemCount: favoriteFormulas.length,
          itemBuilder: (context, index) {
            return FormulaCard(formula: favoriteFormulas[index]);
          },
        );
      },
    );
  }

  Widget _buildFormulaList(List<Formula> formulas) {
    final filteredFormulas = _filterFormulas(formulas);
    
    if (filteredFormulas.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.backgroundColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.search_off,
                size: 48,
                color: AppTheme.textTertiary,
              ),
            ),
            const SizedBox(height: AppTheme.space4),
            Text(
              'Ничего не найдено',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppTheme.textPrimary,
                  ),
            ),
            const SizedBox(height: AppTheme.space2),
            Text(
              'Попробуйте другой запрос',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
            ),
          ],
        ),
      );
    }
    
    // Группировка по подкатегориям
    final Map<String, List<Formula>> groupedFormulas = {};
    for (var formula in filteredFormulas) {
      if (!groupedFormulas.containsKey(formula.subcategory)) {
        groupedFormulas[formula.subcategory] = [];
      }
      groupedFormulas[formula.subcategory]!.add(formula);
    }
    
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: AppTheme.space6),
      itemCount: groupedFormulas.length,
      itemBuilder: (context, categoryIndex) {
        final subcategory = groupedFormulas.keys.elementAt(categoryIndex);
        final categoryFormulas = groupedFormulas[subcategory]!;
        
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Заголовок подкатегории
            Padding(
              padding: const EdgeInsets.only(
                top: AppTheme.space6,
                bottom: AppTheme.space4,
              ),
              child: Row(
                children: [
                  Container(
                    width: 4,
                    height: 24,
                    decoration: BoxDecoration(
                      color: AppTheme.textPrimary,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(width: AppTheme.space3),
                  Expanded(
                    child: Text(
                      subcategory,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: AppTheme.textPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: AppTheme.backgroundColor,
                      borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
                    ),
                    child: Text(
                      '${categoryFormulas.length}',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: AppTheme.textSecondary,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            
            // Формулы в подкатегории
            ...categoryFormulas.map((formula) => FormulaCard(formula: formula)),
          ],
        );
      },
    );
  }
}
