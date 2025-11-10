import '../models/formula.dart';
import 'formulas_data_part1.dart';
import 'formulas_data_part2.dart';
import 'formulas_data_part3.dart';
import 'formulas_data_part4.dart';
import 'formulas_data_part5.dart';
import 'formulas_data_part6.dart';
import 'formulas_data_part7.dart';
import 'formulas_data_part8.dart';
import 'formulas_data_part9.dart';

class FormulasData {
  static final List<Formula> mathematicsFormulas = [
    ...FormulasDataPart1.formulas, // Тригонометрия
    ...FormulasDataPart2.formulas, // Логарифмы, степени, алгебра
    ...FormulasDataPart3.formulas, // Геометрия, прогрессии, комбинаторика
    ...FormulasDataPart5.formulas, // Векторы, аналитическая геометрия, доп. тригонометрия, неравенства, функции
    ...FormulasDataPart7.formulas, // Математический анализ: производные, интегралы
    ...FormulasDataPart8.formulas, // Пределы, тригонометрические уравнения, дополнительная геометрия
  ];

  static final List<Formula> physicsFormulas = [
    ...FormulasDataPart4.formulas, // Механика, термодинамика, электричество, оптика, атомная физика
    ...FormulasDataPart6.formulas, // Гравитация, движение по окружности, колебания, электромагнетизм
    ...FormulasDataPart9.formulas, // Импульс, гидростатика, молекулярная физика, электромагнетизм, квантовая физика
  ];
  
  // Группировка по подкатегориям
  static Map<String, List<Formula>> getMathematicsSubcategories() {
    final Map<String, List<Formula>> result = {};
    for (var formula in mathematicsFormulas) {
      if (!result.containsKey(formula.subcategory)) {
        result[formula.subcategory] = [];
      }
      result[formula.subcategory]!.add(formula);
    }
    return result;
  }
  
  static Map<String, List<Formula>> getPhysicsSubcategories() {
    final Map<String, List<Formula>> result = {};
    for (var formula in physicsFormulas) {
      if (!result.containsKey(formula.subcategory)) {
        result[formula.subcategory] = [];
      }
      result[formula.subcategory]!.add(formula);
    }
    return result;
  }
}
