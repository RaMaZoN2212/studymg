// Part 7: Calculus - Derivatives and Integrals
import '../models/formula.dart';
import '../models/formula_example.dart';

class FormulasDataPart7 {
  static final List<Formula> formulas = [
    // МАТЕМАТИЧЕСКИЙ АНАЛИЗ: ПРОИЗВОДНЫЕ
    Formula(
      id: 'm_calc_01',
      title: 'Производная степенной функции',
      latex: r'(x^n)^\prime = nx^{n-1}',
      description: 'Основное правило дифференцирования степени',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Производные',
      examples: [
        FormulaExample(
          problem: 'Найти производную y = x³',
          given: 'n = 3',
          solution: 'Шаг 1: Применяем формулу\n  y\' = 3·x^(3-1)\n\nШаг 2: Упрощаем\n  y\' = 3x²',
          answer: 'y\' = 3x²',
        ),
        FormulaExample(
          problem: 'Найти производную y = x⁵',
          given: 'n = 5',
          solution: 'Шаг 1: (x⁵)\' = 5·x^(5-1)\n\nШаг 2: Упрощаем\n  = 5x⁴',
          answer: 'y\' = 5x⁴',
        ),
        FormulaExample(
          problem: 'Найти производную y = 1/x = x⁻¹',
          given: 'n = -1',
          solution: 'Шаг 1: (x⁻¹)\' = -1·x^(-1-1)\n\nШаг 2: Упрощаем\n  = -x⁻²\n\nШаг 3: Записываем\n  = -1/x²',
          answer: 'y\' = -1/x²',
        ),
      ],
    ),

    Formula(
      id: 'm_calc_02',
      title: 'Производная синуса',
      latex: r'(\sin x)^\prime = \cos x',
      description: 'Производная тригонометрической функции sin x',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Производные',
      examples: [
        FormulaExample(
          problem: 'Найти производную y = sin x в точке x = 0',
          given: 'x = 0',
          solution: 'Шаг 1: y\' = cos x\n\nШаг 2: При x = 0\n  y\'(0) = cos 0 = 1',
          answer: 'y\'(0) = 1',
        ),
        FormulaExample(
          problem: 'Найти производную y = sin x в точке x = π/2',
          given: 'x = π/2',
          solution: 'Шаг 1: y\' = cos x\n\nШаг 2: При x = π/2\n  y\'(π/2) = cos(π/2) = 0',
          answer: 'y\'(π/2) = 0',
        ),
        FormulaExample(
          problem: 'Найти производную y = 2sin x',
          given: 'коэффициент 2',
          solution: 'Шаг 1: Выносим константу\n  y\' = 2·(sin x)\'\n\nШаг 2: Применяем формулу\n  = 2·cos x',
          answer: 'y\' = 2cos x',
        ),
      ],
    ),

    Formula(
      id: 'm_calc_03',
      title: 'Производная косинуса',
      latex: r'(\cos x)^\prime = -\sin x',
      description: 'Производная тригонометрической функции cos x',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Производные',
      examples: [
        FormulaExample(
          problem: 'Найти производную y = cos x',
          given: 'y = cos x',
          solution: 'Шаг 1: Применяем формулу\n  y\' = -sin x',
          answer: 'y\' = -sin x',
        ),
        FormulaExample(
          problem: 'Найти производную y = cos x в точке x = 0',
          given: 'x = 0',
          solution: 'Шаг 1: y\' = -sin x\n\nШаг 2: При x = 0\n  y\'(0) = -sin 0 = 0',
          answer: 'y\'(0) = 0',
        ),
        FormulaExample(
          problem: 'Найти производную y = 3cos x',
          given: 'коэффициент 3',
          solution: 'Шаг 1: y\' = 3·(cos x)\'\n\nШаг 2: = 3·(-sin x)\n\nШаг 3: = -3sin x',
          answer: 'y\' = -3sin x',
        ),
      ],
    ),

    Formula(
      id: 'm_calc_04',
      title: 'Производная экспоненты',
      latex: r'(e^x)^\prime = e^x',
      description: 'Замечательное свойство: производная e^x равна самой функции',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Производные',
      examples: [
        FormulaExample(
          problem: 'Найти производную y = eˣ',
          given: 'y = eˣ',
          solution: 'Шаг 1: Применяем формулу\n  y\' = eˣ\n\nФункция совпадает с производной!',
          answer: 'y\' = eˣ',
        ),
        FormulaExample(
          problem: 'Найти вторую производную y = eˣ',
          given: 'нужна y\'\'',
          solution: 'Шаг 1: Первая производная\n  y\' = eˣ\n\nШаг 2: Вторая производная\n  y\'\' = (eˣ)\' = eˣ',
          answer: 'y\'\' = eˣ',
        ),
        FormulaExample(
          problem: 'Найти производную y = 5eˣ',
          given: 'коэффициент 5',
          solution: 'Шаг 1: Выносим константу\n  y\' = 5·(eˣ)\'\n\nШаг 2: = 5·eˣ',
          answer: 'y\' = 5eˣ',
        ),
      ],
    ),

    Formula(
      id: 'm_calc_05',
      title: 'Производная натурального логарифма',
      latex: r'(\ln x)^\prime = \frac{1}{x}',
      description: 'Производная логарифма по основанию e',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Производные',
      examples: [
        FormulaExample(
          problem: 'Найти производную y = ln x',
          given: 'y = ln x',
          solution: 'Шаг 1: Применяем формулу\n  y\' = 1/x',
          answer: 'y\' = 1/x',
        ),
        FormulaExample(
          problem: 'Найти производную y = ln x в точке x = 1',
          given: 'x = 1',
          solution: 'Шаг 1: y\' = 1/x\n\nШаг 2: При x = 1\n  y\'(1) = 1/1 = 1',
          answer: 'y\'(1) = 1',
        ),
        FormulaExample(
          problem: 'Найти производную y = 3ln x',
          given: 'коэффициент 3',
          solution: 'Шаг 1: y\' = 3·(ln x)\'\n\nШаг 2: = 3·(1/x)\n\nШаг 3: = 3/x',
          answer: 'y\' = 3/x',
        ),
      ],
    ),

    Formula(
      id: 'm_calc_06',
      title: 'Производная константы',
      latex: r'C^\prime = 0',
      description: 'Производная постоянной величины равна нулю',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Производные',
      examples: [
        FormulaExample(
          problem: 'Найти производную y = 5',
          given: 'C = 5',
          solution: 'Шаг 1: Константа не зависит от x\n\nШаг 2: Применяем формулу\n  y\' = 0',
          answer: 'y\' = 0',
        ),
        FormulaExample(
          problem: 'Найти производную y = -100',
          given: 'C = -100',
          solution: 'Шаг 1: Любая константа\n  C\' = 0\n\nШаг 2: Ответ\n  y\' = 0',
          answer: 'y\' = 0',
        ),
        FormulaExample(
          problem: 'Найти производную y = x² + 7',
          given: 'есть константа 7',
          solution: 'Шаг 1: (x²)\' + 7\'\n\nШаг 2: = 2x + 0\n\nШаг 3: = 2x',
          answer: 'y\' = 2x',
        ),
      ],
    ),

    Formula(
      id: 'm_calc_07',
      title: 'Производная произведения',
      latex: r'(uv)^\prime = u^\prime v + uv^\prime',
      description: 'Правило Лейбница для произведения функций',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Производные',
      examples: [
        FormulaExample(
          problem: 'Найти производную y = x·sin x',
          given: 'u = x, v = sin x',
          solution: 'Шаг 1: Находим u\' и v\'\n  u\' = 1, v\' = cos x\n\nШаг 2: Применяем формулу\n  y\' = 1·sin x + x·cos x\n\nШаг 3: Упрощаем\n  y\' = sin x + x·cos x',
          answer: 'y\' = sin x + x cos x',
        ),
        FormulaExample(
          problem: 'Найти производную y = x²·eˣ',
          given: 'u = x², v = eˣ',
          solution: 'Шаг 1: u\' = 2x, v\' = eˣ\n\nШаг 2: y\' = 2x·eˣ + x²·eˣ\n\nШаг 3: Выносим eˣ\n  y\' = eˣ(2x + x²)',
          answer: 'y\' = eˣ(x² + 2x)',
        ),
        FormulaExample(
          problem: 'Найти производную y = x·ln x',
          given: 'u = x, v = ln x',
          solution: 'Шаг 1: u\' = 1, v\' = 1/x\n\nШаг 2: y\' = 1·ln x + x·(1/x)\n\nШаг 3: = ln x + 1',
          answer: 'y\' = ln x + 1',
        ),
      ],
    ),

    Formula(
      id: 'm_calc_08',
      title: 'Производная частного',
      latex: r'\left(\frac{u}{v}\right)^\prime = \frac{u^\prime v - uv^\prime}{v^2}',
      description: 'Правило дифференцирования дроби',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Производные',
      examples: [
        FormulaExample(
          problem: 'Найти производную y = x/sin x',
          given: 'u = x, v = sin x',
          solution: 'Шаг 1: u\' = 1, v\' = cos x\n\nШаг 2: Применяем формулу\n  y\' = (1·sin x - x·cos x)/(sin x)²\n\nШаг 3: = (sin x - x cos x)/sin²x',
          answer: 'y\' = (sin x - x cos x)/sin²x',
        ),
        FormulaExample(
          problem: 'Найти производную y = x²/eˣ',
          given: 'u = x², v = eˣ',
          solution: 'Шаг 1: u\' = 2x, v\' = eˣ\n\nШаг 2: y\' = (2x·eˣ - x²·eˣ)/(eˣ)²\n\nШаг 3: Упрощаем\n  = (2x - x²)/eˣ',
          answer: 'y\' = (2x - x²)/eˣ',
        ),
        FormulaExample(
          problem: 'Найти производную y = sin x/x',
          given: 'u = sin x, v = x',
          solution: 'Шаг 1: u\' = cos x, v\' = 1\n\nШаг 2: y\' = (cos x·x - sin x·1)/x²\n\nШаг 3: = (x cos x - sin x)/x²',
          answer: 'y\' = (x cos x - sin x)/x²',
        ),
      ],
    ),

    Formula(
      id: 'm_calc_09',
      title: 'Цепное правило (сложная функция)',
      latex: r'[f(g(x))]^\prime = f^\prime(g(x)) \cdot g^\prime(x)',
      description: 'Производная композиции функций',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Производные',
      examples: [
        FormulaExample(
          problem: 'Найти производную y = sin(2x)',
          given: 'f = sin, g(x) = 2x',
          solution: 'Шаг 1: Внешняя функция f\' = cos\n  Внутренняя g\' = 2\n\nШаг 2: Применяем правило\n  y\' = cos(2x)·2\n\nШаг 3: = 2cos(2x)',
          answer: 'y\' = 2cos(2x)',
        ),
        FormulaExample(
          problem: 'Найти производную y = (x² + 1)³',
          given: 'f = ()³, g = x² + 1',
          solution: 'Шаг 1: f\' = 3()², g\' = 2x\n\nШаг 2: y\' = 3(x² + 1)²·2x\n\nШаг 3: = 6x(x² + 1)²',
          answer: 'y\' = 6x(x² + 1)²',
        ),
        FormulaExample(
          problem: 'Найти производную y = eˣ²',
          given: 'f = eˣ, g = x²',
          solution: 'Шаг 1: f\' = eˣ, g\' = 2x\n\nШаг 2: y\' = eˣ²·2x\n\nШаг 3: = 2x·eˣ²',
          answer: 'y\' = 2x eˣ²',
        ),
      ],
    ),

    // ИНТЕГРАЛЫ
    Formula(
      id: 'm_calc_10',
      title: 'Интеграл степенной функции',
      latex: r'\int x^n dx = \frac{x^{n+1}}{n+1} + C,\quad n \neq -1',
      description: 'Основное правило интегрирования степени',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Интегралы',
      examples: [
        FormulaExample(
          problem: 'Найти ∫x³ dx',
          given: 'n = 3',
          solution: 'Шаг 1: Применяем формулу\n  ∫x³ dx = x^(3+1)/(3+1) + C\n\nШаг 2: Упрощаем\n  = x⁴/4 + C',
          answer: '∫x³ dx = x⁴/4 + C',
        ),
        FormulaExample(
          problem: 'Найти ∫x dx',
          given: 'n = 1',
          solution: 'Шаг 1: ∫x dx = x^(1+1)/(1+1) + C\n\nШаг 2: = x²/2 + C',
          answer: '∫x dx = x²/2 + C',
        ),
        FormulaExample(
          problem: 'Найти ∫√x dx',
          given: 'x^(1/2)',
          solution: 'Шаг 1: n = 1/2\n  ∫x^(1/2) dx = x^(3/2)/(3/2) + C\n\nШаг 2: = (2/3)x^(3/2) + C',
          answer: '∫√x dx = (2/3)x√x + C',
        ),
      ],
    ),

    Formula(
      id: 'm_calc_11',
      title: 'Интеграл синуса',
      latex: r'\int \sin x\, dx = -\cos x + C',
      description: 'Интеграл тригонометрической функции sin x',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Интегралы',
      examples: [
        FormulaExample(
          problem: 'Найти ∫sin x dx',
          given: '∫sin x dx',
          solution: 'Шаг 1: Применяем формулу\n  ∫sin x dx = -cos x + C',
          answer: '∫sin x dx = -cos x + C',
        ),
        FormulaExample(
          problem: 'Проверить результат дифференцированием',
          given: 'F(x) = -cos x + C',
          solution: 'Шаг 1: Берём производную\n  F\'(x) = (-cos x)\'\n\nШаг 2: = -(-sin x)\n\nШаг 3: = sin x ✓',
          answer: 'Проверка: sin x ✓',
        ),
        FormulaExample(
          problem: 'Найти ∫2sin x dx',
          given: 'коэффициент 2',
          solution: 'Шаг 1: Выносим константу\n  2∫sin x dx\n\nШаг 2: = 2(-cos x) + C\n\nШаг 3: = -2cos x + C',
          answer: '∫2sin x dx = -2cos x + C',
        ),
      ],
    ),

    Formula(
      id: 'm_calc_12',
      title: 'Интеграл косинуса',
      latex: r'\int \cos x\, dx = \sin x + C',
      description: 'Интеграл тригонометрической функции cos x',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Интегралы',
      examples: [
        FormulaExample(
          problem: 'Найти ∫cos x dx',
          given: '∫cos x dx',
          solution: 'Шаг 1: Применяем формулу\n  ∫cos x dx = sin x + C',
          answer: '∫cos x dx = sin x + C',
        ),
        FormulaExample(
          problem: 'Вычислить ∫₀^(π/2) cos x dx',
          given: 'пределы от 0 до π/2',
          solution: 'Шаг 1: Первообразная sin x\n\nШаг 2: Подставляем пределы\n  [sin x]₀^(π/2) = sin(π/2) - sin(0)\n\nШаг 3: = 1 - 0 = 1',
          answer: '∫₀^(π/2) cos x dx = 1',
        ),
        FormulaExample(
          problem: 'Найти ∫3cos x dx',
          given: 'коэффициент 3',
          solution: 'Шаг 1: 3∫cos x dx\n\nШаг 2: = 3·sin x + C\n\nШаг 3: = 3sin x + C',
          answer: '∫3cos x dx = 3sin x + C',
        ),
      ],
    ),

    Formula(
      id: 'm_calc_13',
      title: 'Интеграл экспоненты',
      latex: r'\int e^x dx = e^x + C',
      description: 'Интеграл экспоненциальной функции',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Интегралы',
      examples: [
        FormulaExample(
          problem: 'Найти ∫eˣ dx',
          given: '∫eˣ dx',
          solution: 'Шаг 1: Применяем формулу\n  ∫eˣ dx = eˣ + C\n\nИнтеграл совпадает с функцией!',
          answer: '∫eˣ dx = eˣ + C',
        ),
        FormulaExample(
          problem: 'Вычислить ∫₀¹ eˣ dx',
          given: 'пределы от 0 до 1',
          solution: 'Шаг 1: Первообразная eˣ\n\nШаг 2: [eˣ]₀¹ = e¹ - e⁰\n\nШаг 3: = e - 1 ≈ 1.718',
          answer: '∫₀¹ eˣ dx = e - 1',
        ),
        FormulaExample(
          problem: 'Найти ∫5eˣ dx',
          given: 'коэффициент 5',
          solution: 'Шаг 1: 5∫eˣ dx\n\nШаг 2: = 5·eˣ + C',
          answer: '∫5eˣ dx = 5eˣ + C',
        ),
      ],
    ),

    Formula(
      id: 'm_calc_14',
      title: 'Интеграл 1/x',
      latex: r'\int \frac{1}{x} dx = \ln|x| + C',
      description: 'Интеграл дроби 1/x равен натуральному логарифму',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Интегралы',
      examples: [
        FormulaExample(
          problem: 'Найти ∫(1/x) dx',
          given: '∫(1/x) dx',
          solution: 'Шаг 1: Применяем формулу\n  ∫(1/x) dx = ln|x| + C\n\nМодуль обязателен!',
          answer: '∫(1/x) dx = ln|x| + C',
        ),
        FormulaExample(
          problem: 'Вычислить ∫₁ᵉ (1/x) dx',
          given: 'от 1 до e',
          solution: 'Шаг 1: [ln|x|]₁ᵉ\n\nШаг 2: = ln e - ln 1\n\nШаг 3: = 1 - 0 = 1',
          answer: '∫₁ᵉ (1/x) dx = 1',
        ),
        FormulaExample(
          problem: 'Найти ∫(3/x) dx',
          given: 'коэффициент 3',
          solution: 'Шаг 1: 3∫(1/x) dx\n\nШаг 2: = 3·ln|x| + C',
          answer: '∫(3/x) dx = 3ln|x| + C',
        ),
      ],
    ),

    Formula(
      id: 'm_calc_15',
      title: 'Формула Ньютона-Лейбница',
      latex: r'\int_a^b f(x) dx = F(b) - F(a)',
      description: 'Вычисление определённого интеграла через первообразную',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Интегралы',
      examples: [
        FormulaExample(
          problem: 'Вычислить ∫₁³ x² dx',
          given: 'a = 1, b = 3, f(x) = x²',
          solution: 'Шаг 1: Первообразная F(x) = x³/3\n\nШаг 2: F(3) - F(1)\n  = 27/3 - 1/3\n\nШаг 3: = 26/3 ≈ 8.67',
          answer: '∫₁³ x² dx = 26/3',
        ),
        FormulaExample(
          problem: 'Вычислить ∫₀^π sin x dx',
          given: 'a = 0, b = π',
          solution: 'Шаг 1: F(x) = -cos x\n\nШаг 2: F(π) - F(0)\n  = -cos π - (-cos 0)\n\nШаг 3: = -(-1) - (-1)\n  = 1 + 1 = 2',
          answer: '∫₀^π sin x dx = 2',
        ),
        FormulaExample(
          problem: 'Найти площадь под y = x от 0 до 2',
          given: 'S = ∫₀² x dx',
          solution: 'Шаг 1: F(x) = x²/2\n\nШаг 2: F(2) - F(0)\n  = 4/2 - 0\n\nШаг 3: = 2',
          answer: 'S = 2 кв.ед.',
        ),
      ],
    ),
  ];
}
