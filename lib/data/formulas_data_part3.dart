// Part 3: Geometry and Sequences
import '../models/formula.dart';
import '../models/formula_example.dart';

class FormulasDataPart3 {
  static final List<Formula> formulas = [
    // ГЕОМЕТРИЯ - ПЛАНИМЕТРИЯ
    Formula(
      id: 'm_geom_01',
      title: 'Теорема Пифагора',
      latex: r'a^2 + b^2 = c^2',
      description: 'В прямоугольном треугольнике квадрат гипотенузы равен сумме квадратов катетов',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Планиметрия',
      examples: [
        FormulaExample(
          problem: 'Найти гипотенузу, если катеты 3 и 4 см',
          given: 'a = 3 см, b = 4 см',
          solution: 'c² = 9 + 16 = 25\nc = 5 см',
          answer: 'c = 5 см',
        ),
      ],
    ),
    
    Formula(
      id: 'm_geom_02',
      title: 'Площадь треугольника',
      latex: r'S = \frac{1}{2}ah',
      description: 'Площадь через основание и высоту',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Планиметрия',
      examples: [
        FormulaExample(
          problem: 'Найти площадь с основанием 8 см и высотой 5 см',
          given: 'a = 8 см, h = 5 см',
          solution: 'S = (1/2) · 8 · 5 = 20 см²',
          answer: 'S = 20 см²',
        ),
      ],
    ),
    
    Formula(
      id: 'm_geom_03',
      title: 'Формула Герона',
      latex: r'S = \sqrt{p(p-a)(p-b)(p-c)},\quad p = \frac{a+b+c}{2}',
      description: 'Площадь треугольника через три стороны',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Планиметрия',
      examples: [
        FormulaExample(
          problem: 'Найти площадь треугольника со сторонами 3, 4, 5 см',
          given: 'a = 3, b = 4, c = 5',
          solution: 'p = 6\nS = √(6·3·2·1) = √36 = 6 см²',
          answer: 'S = 6 см²',
        ),
      ],
    ),
    
    Formula(
      id: 'm_geom_04',
      title: 'Площадь круга',
      latex: r'S = \pi r^2',
      description: 'Площадь круга с радиусом r',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Планиметрия',
      examples: [
        FormulaExample(
          problem: 'Найти площадь круга с радиусом 5 см',
          given: 'r = 5 см',
          solution: 'S = π · 25 ≈ 78.5 см²',
          answer: 'S ≈ 78.5 см²',
        ),
      ],
    ),
    
    Formula(
      id: 'm_geom_05',
      title: 'Длина окружности',
      latex: r'C = 2\pi r = \pi d',
      description: 'Длина окружности',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Планиметрия',
      examples: [
        FormulaExample(
          problem: 'Найти длину окружности с диаметром 10 см',
          given: 'd = 10 см',
          solution: 'C = π · 10 ≈ 31.4 см',
          answer: 'C ≈ 31.4 см',
        ),
      ],
    ),
    
    Formula(
      id: 'm_geom_06',
      title: 'Площадь трапеции',
      latex: r'S = \frac{(a + b)h}{2}',
      description: 'Площадь трапеции через основания и высоту',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Планиметрия',
      examples: [
        FormulaExample(
          problem: 'Найти площадь трапеции с основаниями 5 и 9 см, высотой 4 см',
          given: 'a = 5 см, b = 9 см, h = 4 см',
          solution: 'S = (5 + 9) · 4 / 2 = 14 · 2 = 28 см²',
          answer: 'S = 28 см²',
        ),
      ],
    ),
    
    // ГЕОМЕТРИЯ - СТЕРЕОМЕТРИЯ
    Formula(
      id: 'm_geom_07',
      title: 'Объём параллелепипеда',
      latex: r'V = abc',
      description: 'Объём прямоугольного параллелепипеда',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Стереометрия',
      examples: [
        FormulaExample(
          problem: 'Найти объём параллелепипеда 3×4×5 см',
          given: 'a = 3, b = 4, c = 5',
          solution: 'V = 3 · 4 · 5 = 60 см³',
          answer: 'V = 60 см³',
        ),
      ],
    ),
    
    Formula(
      id: 'm_geom_08',
      title: 'Объём цилиндра',
      latex: r'V = \pi r^2 h',
      description: 'Объём цилиндра',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Стереометрия',
      examples: [
        FormulaExample(
          problem: 'Найти объём цилиндра с r = 3 см и h = 10 см',
          given: 'r = 3, h = 10',
          solution: 'V = π · 9 · 10 = 90π ≈ 282.7 см³',
          answer: 'V ≈ 282.7 см³',
        ),
      ],
    ),
    
    Formula(
      id: 'm_geom_09',
      title: 'Объём конуса',
      latex: r'V = \frac{1}{3}\pi r^2 h',
      description: 'Объём конуса',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Стереометрия',
      examples: [
        FormulaExample(
          problem: 'Найти объём конуса с r = 3 см и h = 4 см',
          given: 'r = 3, h = 4',
          solution: 'V = (1/3) · π · 9 · 4 = 12π ≈ 37.7 см³',
          answer: 'V ≈ 37.7 см³',
        ),
      ],
    ),
    
    Formula(
      id: 'm_geom_10',
      title: 'Объём сферы',
      latex: r'V = \frac{4}{3}\pi r^3',
      description: 'Объём сферы',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Стереометрия',
      examples: [
        FormulaExample(
          problem: 'Найти объём сферы с радиусом 3 см',
          given: 'r = 3',
          solution: 'V = (4/3) · π · 27 = 36π ≈ 113.1 см³',
          answer: 'V ≈ 113.1 см³',
        ),
      ],
    ),
    
    Formula(
      id: 'm_geom_11',
      title: 'Площадь поверхности сферы',
      latex: r'S = 4\pi r^2',
      description: 'Площадь поверхности сферы',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Стереометрия',
      examples: [
        FormulaExample(
          problem: 'Найти площадь поверхности сферы с радиусом 5 см',
          given: 'r = 5',
          solution: 'S = 4 · π · 25 = 100π ≈ 314.2 см²',
          answer: 'S ≈ 314.2 см²',
        ),
      ],
    ),
    
    // ПРОГРЕССИИ
    Formula(
      id: 'm_seq_01',
      title: 'Арифметическая прогрессия: n-й член',
      latex: r'a_n = a_1 + (n - 1)d',
      description: 'n-й член арифметической прогрессии',
      category: FormulaCategory.mathematics,
      subcategory: 'Прогрессии',
      examples: [
        FormulaExample(
          problem: 'Найти 10-й член прогрессии 2, 5, 8, ...',
          given: 'a₁ = 2, d = 3',
          solution: 'a₁₀ = 2 + 9 · 3 = 29',
          answer: 'a₁₀ = 29',
        ),
      ],
    ),
    
    Formula(
      id: 'm_seq_02',
      title: 'Арифметическая прогрессия: сумма',
      latex: r'S_n = \frac{n(a_1 + a_n)}{2}',
      description: 'Сумма первых n членов',
      category: FormulaCategory.mathematics,
      subcategory: 'Прогрессии',
      examples: [
        FormulaExample(
          problem: 'Найти сумму первых 20 членов: 1, 3, 5, ...',
          given: 'a₁ = 1, d = 2, n = 20',
          solution: 'a₂₀ = 39\nS₂₀ = 20 · 40 / 2 = 400',
          answer: 'S₂₀ = 400',
        ),
      ],
    ),
    
    Formula(
      id: 'm_seq_03',
      title: 'Геометрическая прогрессия: n-й член',
      latex: r'b_n = b_1 \cdot q^{n-1}',
      description: 'n-й член геометрической прогрессии',
      category: FormulaCategory.mathematics,
      subcategory: 'Прогрессии',
      examples: [
        FormulaExample(
          problem: 'Найти 6-й член прогрессии 2, 6, 18, ...',
          given: 'b₁ = 2, q = 3',
          solution: 'b₆ = 2 · 3⁵ = 2 · 243 = 486',
          answer: 'b₆ = 486',
        ),
      ],
    ),
    
    Formula(
      id: 'm_seq_04',
      title: 'Геометрическая прогрессия: сумма',
      latex: r'S_n = \frac{b_1(q^n - 1)}{q - 1}',
      description: 'Сумма первых n членов при q ≠ 1',
      category: FormulaCategory.mathematics,
      subcategory: 'Прогрессии',
      examples: [
        FormulaExample(
          problem: 'Найти сумму первых 5 членов: 1, 2, 4, ...',
          given: 'b₁ = 1, q = 2, n = 5',
          solution: 'S₅ = 1 · (32 - 1) / 1 = 31',
          answer: 'S₅ = 31',
        ),
      ],
    ),
    
    Formula(
      id: 'm_seq_05',
      title: 'Бесконечная геометрическая прогрессия',
      latex: r'S = \frac{b_1}{1 - q},\quad |q| < 1',
      description: 'Сумма бесконечной убывающей прогрессии',
      category: FormulaCategory.mathematics,
      subcategory: 'Прогрессии',
      examples: [
        FormulaExample(
          problem: 'Найти сумму бесконечной прогрессии 8, 4, 2, ...',
          given: 'b₁ = 8, q = 0.5',
          solution: 'S = 8 / (1 - 0.5) = 16',
          answer: 'S = 16',
        ),
      ],
    ),
    
    // КОМБИНАТОРИКА
    Formula(
      id: 'm_comb_01',
      title: 'Размещения',
      latex: r'A_n^k = \frac{n!}{(n-k)!}',
      description: 'Упорядоченные выборки k элементов из n',
      category: FormulaCategory.mathematics,
      subcategory: 'Комбинаторика',
      examples: [
        FormulaExample(
          problem: 'Найти A₅³',
          given: 'n = 5, k = 3',
          solution: 'A₅³ = 5! / 2! = 120 / 2 = 60',
          answer: 'A₅³ = 60',
        ),
      ],
    ),
    
    Formula(
      id: 'm_comb_02',
      title: 'Перестановки',
      latex: r'P_n = n!',
      description: 'Число перестановок n элементов',
      category: FormulaCategory.mathematics,
      subcategory: 'Комбинаторика',
      examples: [
        FormulaExample(
          problem: 'Найти P₄',
          given: 'n = 4',
          solution: 'P₄ = 4! = 24',
          answer: 'P₄ = 24',
        ),
      ],
    ),
    
    Formula(
      id: 'm_comb_03',
      title: 'Сочетания',
      latex: r'C_n^k = \binom{n}{k} = \frac{n!}{k!(n-k)!}',
      description: 'Неупорядоченные выборки k элементов из n',
      category: FormulaCategory.mathematics,
      subcategory: 'Комбинаторика',
      examples: [
        FormulaExample(
          problem: 'Найти C₅²',
          given: 'n = 5, k = 2',
          solution: 'C₅² = 5! / (2! · 3!) = 120 / 12 = 10',
          answer: 'C₅² = 10',
        ),
      ],
    ),
  ];
}
