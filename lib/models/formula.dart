import 'formula_example.dart';

class Formula {
  final String id;
  final String title;
  final String latex;
  final String? description;
  final FormulaCategory category;
  final String subcategory;
  final List<FormulaExample> examples;

  Formula({
    required this.id,
    required this.title,
    required this.latex,
    this.description,
    required this.category,
    required this.subcategory,
    this.examples = const [],
  });
}

enum FormulaCategory {
  mathematics,
  physics,
}

extension FormulaCategoryExtension on FormulaCategory {
  String get displayName {
    switch (this) {
      case FormulaCategory.mathematics:
        return 'Математика';
      case FormulaCategory.physics:
        return 'Физика';
    }
  }
}

