// Part 2: Logarithms, Exponents, Algebra
import '../models/formula.dart';
import '../models/formula_example.dart';

class FormulasDataPart2 {
  static final List<Formula> formulas = [
    // ЛОГАРИФМЫ
    Formula(
      id: 'm_log_01',
      title: 'Определение логарифма',
      latex: r'\log_a b = c \Leftrightarrow a^c = b',
      description: 'Логарифм - показатель степени, в которую нужно возвести основание',
      category: FormulaCategory.mathematics,
      subcategory: 'Логарифмы',
      examples: [
        FormulaExample(
          problem: 'Вычислить log₂ 8',
          given: 'a = 2, b = 8',
          solution: '2ᶜ = 8\n2ᶜ = 2³\nc = 3',
          answer: 'log₂ 8 = 3',
        ),
        FormulaExample(
          problem: 'Вычислить log₁₀ 100',
          given: 'a = 10, b = 100',
          solution: '10ᶜ = 100\n10ᶜ = 10²\nc = 2',
          answer: 'log₁₀ 100 = 2',
        ),
      ],
    ),
    
    Formula(
      id: 'm_log_02',
      title: 'Логарифм произведения',
      latex: r'\log_a (xy) = \log_a x + \log_a y',
      description: 'Логарифм произведения равен сумме логарифмов',
      category: FormulaCategory.mathematics,
      subcategory: 'Логарифмы',
      examples: [
        FormulaExample(
          problem: 'Вычислить log₂ (4 · 8)',
          given: '4 · 8 = 32',
          solution: 'log₂ (4 · 8) = log₂ 4 + log₂ 8\n= 2 + 3 = 5',
          answer: 'log₂ 32 = 5',
        ),
      ],
    ),
    
    Formula(
      id: 'm_log_03',
      title: 'Логарифм частного',
      latex: r'\log_a \frac{x}{y} = \log_a x - \log_a y',
      description: 'Логарифм частного равен разности логарифмов',
      category: FormulaCategory.mathematics,
      subcategory: 'Логарифмы',
      examples: [
        FormulaExample(
          problem: 'Вычислить log₂ (16/4)',
          given: '16/4 = 4',
          solution: 'log₂ (16/4) = log₂ 16 - log₂ 4\n= 4 - 2 = 2',
          answer: 'log₂ 4 = 2',
        ),
      ],
    ),
    
    Formula(
      id: 'm_log_04',
      title: 'Логарифм степени',
      latex: r'\log_a x^n = n \cdot \log_a x',
      description: 'Показатель степени можно вынести за знак логарифма',
      category: FormulaCategory.mathematics,
      subcategory: 'Логарифмы',
      examples: [
        FormulaExample(
          problem: 'Вычислить log₂ 16',
          given: '16 = 2⁴',
          solution: 'log₂ 2⁴ = 4 · log₂ 2 = 4 · 1 = 4',
          answer: 'log₂ 16 = 4',
        ),
        FormulaExample(
          problem: 'Упростить log₃ 27²',
          given: '27 = 3³',
          solution: 'log₃ (3³)² = log₃ 3⁶ = 6',
          answer: '6',
        ),
      ],
    ),
    
    Formula(
      id: 'm_log_05',
      title: 'Формула перехода к новому основанию',
      latex: r'\log_a b = \frac{\log_c b}{\log_c a}',
      description: 'Переход от логарифма по одному основанию к другому',
      category: FormulaCategory.mathematics,
      subcategory: 'Логарифмы',
      examples: [
        FormulaExample(
          problem: 'Вычислить log₄ 8 через десятичные логарифмы',
          given: 'lg 8 ≈ 0.903, lg 4 ≈ 0.602',
          solution: 'log₄ 8 = lg 8 / lg 4 ≈ 0.903 / 0.602 ≈ 1.5',
          answer: 'log₄ 8 = 1.5',
        ),
      ],
    ),
    
    Formula(
      id: 'm_log_06',
      title: 'Натуральный логарифм',
      latex: r'\ln x = \log_e x,\quad e \approx 2.718',
      description: 'Логарифм по основанию e (число Эйлера)',
      category: FormulaCategory.mathematics,
      subcategory: 'Логарифмы',
      examples: [
        FormulaExample(
          problem: 'Вычислить ln e³',
          given: 'основание = e',
          solution: 'ln e³ = 3 · ln e = 3 · 1 = 3',
          answer: 'ln e³ = 3',
        ),
      ],
    ),
    
    // СТЕПЕНИ И КОРНИ
    Formula(
      id: 'm_exp_01',
      title: 'Произведение степеней',
      latex: r'a^m \cdot a^n = a^{m+n}',
      description: 'При умножении степеней с одинаковым основанием показатели складываются',
      category: FormulaCategory.mathematics,
      subcategory: 'Степени и корни',
      examples: [
        FormulaExample(
          problem: 'Упростить 2³ · 2⁴',
          given: 'основание = 2',
          solution: '2³ · 2⁴ = 2³⁺⁴ = 2⁷ = 128',
          answer: '128',
        ),
        FormulaExample(
          problem: 'Упростить x⁵ · x³',
          given: 'основание = x',
          solution: 'x⁵ · x³ = x⁵⁺³ = x⁸',
          answer: 'x⁸',
        ),
      ],
    ),
    
    Formula(
      id: 'm_exp_02',
      title: 'Частное степеней',
      latex: r'\frac{a^m}{a^n} = a^{m-n}',
      description: 'При делении степеней с одинаковым основанием показатели вычитаются',
      category: FormulaCategory.mathematics,
      subcategory: 'Степени и корни',
      examples: [
        FormulaExample(
          problem: 'Упростить 2⁸ / 2⁵',
          given: 'основание = 2',
          solution: '2⁸ / 2⁵ = 2⁸⁻⁵ = 2³ = 8',
          answer: '8',
        ),
        FormulaExample(
          problem: 'Упростить x¹⁰ / x⁴',
          given: 'основание = x',
          solution: 'x¹⁰ / x⁴ = x¹⁰⁻⁴ = x⁶',
          answer: 'x⁶',
        ),
      ],
    ),
    
    Formula(
      id: 'm_exp_03',
      title: 'Степень степени',
      latex: r'(a^m)^n = a^{mn}',
      description: 'При возведении степени в степень показатели перемножаются',
      category: FormulaCategory.mathematics,
      subcategory: 'Степени и корни',
      examples: [
        FormulaExample(
          problem: 'Упростить (2³)⁴',
          given: 'основание = 2',
          solution: '(2³)⁴ = 2³ˣ⁴ = 2¹² = 4096',
          answer: '4096',
        ),
        FormulaExample(
          problem: 'Упростить (x²)⁵',
          given: 'основание = x',
          solution: '(x²)⁵ = x²ˣ⁵ = x¹⁰',
          answer: 'x¹⁰',
        ),
      ],
    ),
    
    Formula(
      id: 'm_exp_04',
      title: 'Произведение в степени',
      latex: r'(ab)^n = a^n b^n',
      description: 'Степень произведения равна произведению степеней',
      category: FormulaCategory.mathematics,
      subcategory: 'Степени и корни',
      examples: [
        FormulaExample(
          problem: 'Вычислить (2 · 5)³',
          given: 'a = 2, b = 5, n = 3',
          solution: '(2 · 5)³ = 2³ · 5³ = 8 · 125 = 1000',
          answer: '1000',
        ),
      ],
    ),
    
    Formula(
      id: 'm_exp_05',
      title: 'Корень n-й степени',
      latex: r'\sqrt[n]{a} = a^{1/n}',
      description: 'Корень можно представить как степень с дробным показателем',
      category: FormulaCategory.mathematics,
      subcategory: 'Степени и корни',
      examples: [
        FormulaExample(
          problem: 'Вычислить ∛8',
          given: 'a = 8, n = 3',
          solution: '∛8 = 8^(1/3) = (2³)^(1/3) = 2',
          answer: '∛8 = 2',
        ),
        FormulaExample(
          problem: 'Вычислить ⁴√16',
          given: 'a = 16, n = 4',
          solution: '⁴√16 = 16^(1/4) = (2⁴)^(1/4) = 2',
          answer: '⁴√16 = 2',
        ),
      ],
    ),
    
    // АЛГЕБРА
    Formula(
      id: 'm_alg_01',
      title: 'Квадратное уравнение',
      latex: r'x = \frac{-b \pm \sqrt{b^2-4ac}}{2a}',
      description: 'Решение квадратного уравнения ax² + bx + c = 0',
      category: FormulaCategory.mathematics,
      subcategory: 'Алгебра: Уравнения',
      examples: [
        FormulaExample(
          problem: 'Решить x² - 5x + 6 = 0',
          given: 'a = 1, b = -5, c = 6',
          solution: 'D = 25 - 24 = 1\nx₁ = (5+1)/2 = 3\nx₂ = (5-1)/2 = 2',
          answer: 'x₁ = 3, x₂ = 2',
        ),
      ],
    ),
    
    Formula(
      id: 'm_alg_02',
      title: 'Теорема Виета',
      latex: r'x_1 + x_2 = -\frac{b}{a},\quad x_1 \cdot x_2 = \frac{c}{a}',
      description: 'Связь между корнями и коэффициентами квадратного уравнения',
      category: FormulaCategory.mathematics,
      subcategory: 'Алгебра: Уравнения',
      examples: [
        FormulaExample(
          problem: 'Найти сумму и произведение корней x² - 7x + 10 = 0',
          given: 'a = 1, b = -7, c = 10',
          solution: 'x₁ + x₂ = 7\nx₁ · x₂ = 10',
          answer: 'сумма = 7, произведение = 10',
        ),
      ],
    ),
    
    Formula(
      id: 'm_alg_03',
      title: 'Квадрат суммы',
      latex: r'(a + b)^2 = a^2 + 2ab + b^2',
      description: 'Формула сокращённого умножения',
      category: FormulaCategory.mathematics,
      subcategory: 'Алгебра: Формулы сокращённого умножения',
      examples: [
        FormulaExample(
          problem: 'Раскрыть (x + 3)²',
          given: 'a = x, b = 3',
          solution: '(x + 3)² = x² + 6x + 9',
          answer: 'x² + 6x + 9',
        ),
      ],
    ),
    
    Formula(
      id: 'm_alg_04',
      title: 'Квадрат разности',
      latex: r'(a - b)^2 = a^2 - 2ab + b^2',
      description: 'Формула сокращённого умножения',
      category: FormulaCategory.mathematics,
      subcategory: 'Алгебра: Формулы сокращённого умножения',
      examples: [
        FormulaExample(
          problem: 'Раскрыть (x - 4)²',
          given: 'a = x, b = 4',
          solution: '(x - 4)² = x² - 8x + 16',
          answer: 'x² - 8x + 16',
        ),
      ],
    ),
    
    Formula(
      id: 'm_alg_05',
      title: 'Разность квадратов',
      latex: r'a^2 - b^2 = (a - b)(a + b)',
      description: 'Формула сокращённого умножения',
      category: FormulaCategory.mathematics,
      subcategory: 'Алгебра: Формулы сокращённого умножения',
      examples: [
        FormulaExample(
          problem: 'Разложить x² - 25',
          given: 'a = x, b = 5',
          solution: 'x² - 25 = (x - 5)(x + 5)',
          answer: '(x - 5)(x + 5)',
        ),
      ],
    ),
    
    Formula(
      id: 'm_alg_06',
      title: 'Куб суммы',
      latex: r'(a + b)^3 = a^3 + 3a^2b + 3ab^2 + b^3',
      description: 'Формула сокращённого умножения',
      category: FormulaCategory.mathematics,
      subcategory: 'Алгебра: Формулы сокращённого умножения',
      examples: [
        FormulaExample(
          problem: 'Раскрыть (x + 2)³',
          given: 'a = x, b = 2',
          solution: '(x + 2)³ = x³ + 6x² + 12x + 8',
          answer: 'x³ + 6x² + 12x + 8',
        ),
      ],
    ),
    
    Formula(
      id: 'm_alg_07',
      title: 'Куб разности',
      latex: r'(a - b)^3 = a^3 - 3a^2b + 3ab^2 - b^3',
      description: 'Формула сокращённого умножения',
      category: FormulaCategory.mathematics,
      subcategory: 'Алгебра: Формулы сокращённого умножения',
      examples: [
        FormulaExample(
          problem: 'Раскрыть (x - 1)³',
          given: 'a = x, b = 1',
          solution: '(x - 1)³ = x³ - 3x² + 3x - 1',
          answer: 'x³ - 3x² + 3x - 1',
        ),
      ],
    ),
    
    Formula(
      id: 'm_alg_08',
      title: 'Сумма кубов',
      latex: r'a^3 + b^3 = (a + b)(a^2 - ab + b^2)',
      description: 'Разложение суммы кубов на множители',
      category: FormulaCategory.mathematics,
      subcategory: 'Алгебра: Формулы сокращённого умножения',
      examples: [
        FormulaExample(
          problem: 'Разложить x³ + 8',
          given: 'a = x, b = 2',
          solution: 'x³ + 8 = (x + 2)(x² - 2x + 4)',
          answer: '(x + 2)(x² - 2x + 4)',
        ),
      ],
    ),
    
    Formula(
      id: 'm_alg_09',
      title: 'Разность кубов',
      latex: r'a^3 - b^3 = (a - b)(a^2 + ab + b^2)',
      description: 'Разложение разности кубов на множители',
      category: FormulaCategory.mathematics,
      subcategory: 'Алгебра: Формулы сокращённого умножения',
      examples: [
        FormulaExample(
          problem: 'Разложить x³ - 27',
          given: 'a = x, b = 3',
          solution: 'x³ - 27 = (x - 3)(x² + 3x + 9)',
          answer: '(x - 3)(x² + 3x + 9)',
        ),
      ],
    ),
  ];
}
