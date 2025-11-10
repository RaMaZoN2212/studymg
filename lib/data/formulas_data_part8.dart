// Part 8: Limits, Trigonometric Equations, and Additional Geometry
import '../models/formula.dart';
import '../models/formula_example.dart';

class FormulasDataPart8 {
  static final List<Formula> formulas = [
    // ПРЕДЕЛЫ
    Formula(
      id: 'm_lim_01',
      title: 'Первый замечательный предел',
      latex: r'\lim_{x \to 0} \frac{\sin x}{x} = 1',
      description: 'Важнейший предел для тригонометрических функций',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Пределы',
      examples: [
        FormulaExample(
          problem: 'Вычислить lim(x→0) (sin 2x)/x',
          given: 'числитель sin 2x',
          solution: 'Шаг 1: Домножим и поделим на 2\n  = lim(x→0) 2·(sin 2x)/(2x)\n\nШаг 2: Замена: u = 2x, при x→0, u→0\n  = 2·lim(u→0) (sin u)/u\n\nШаг 3: Применяем формулу\n  = 2·1 = 2',
          answer: 'lim = 2',
        ),
        FormulaExample(
          problem: 'Вычислить lim(x→0) (sin 3x)/(sin 2x)',
          given: 'дробь синусов',
          solution: 'Шаг 1: Умножим на x/x\n  = lim(x→0) [(sin 3x)/(3x)]·[(2x)/(sin 2x)]·(3/2)\n\nШаг 2: Разделяем пределы\n  = lim(sin 3x/3x)·lim(2x/sin 2x)·(3/2)\n\nШаг 3: = 1·1·(3/2) = 3/2',
          answer: 'lim = 3/2',
        ),
        FormulaExample(
          problem: 'Вычислить lim(x→0) (tan x)/x',
          given: 'tan x = sin x/cos x',
          solution: 'Шаг 1: Преобразуем\n  = lim(x→0) (sin x)/(x·cos x)\n\nШаг 2: = lim(sin x/x)·lim(1/cos x)\n\nШаг 3: = 1·(1/1) = 1',
          answer: 'lim = 1',
        ),
      ],
    ),

    Formula(
      id: 'm_lim_02',
      title: 'Второй замечательный предел',
      latex: r'\lim_{x \to \infty} \left(1 + \frac{1}{x}\right)^x = e',
      description: 'Определение числа e через предел',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Пределы',
      examples: [
        FormulaExample(
          problem: 'Вычислить lim(x→∞) (1 + 1/x)ˣ',
          given: 'классическая форма',
          solution: 'Шаг 1: Это определение e\n\nШаг 2: Применяем формулу\n  = e ≈ 2.71828...',
          answer: 'lim = e',
        ),
        FormulaExample(
          problem: 'Вычислить lim(x→∞) (1 + 2/x)ˣ',
          given: 'коэффициент 2',
          solution: 'Шаг 1: Преобразуем\n  = lim(x→∞) [(1 + 2/x)^(x/2)]²\n\nШаг 2: Замена u = x/2\n  = [lim(u→∞) (1 + 1/u)^u]²\n\nШаг 3: = e² ≈ 7.389',
          answer: 'lim = e²',
        ),
        FormulaExample(
          problem: 'Вычислить lim(x→∞) (1 + 3/x)^(x/3)',
          given: 'степень x/3',
          solution: 'Шаг 1: Замена t = x/3\n  = lim(t→∞) (1 + 1/t)^t\n\nШаг 2: Применяем формулу\n  = e',
          answer: 'lim = e',
        ),
      ],
    ),

    Formula(
      id: 'm_lim_03',
      title: 'Предел экспоненты',
      latex: r'\lim_{x \to 0} \frac{e^x - 1}{x} = 1',
      description: 'Важный предел для экспоненциальной функции',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Пределы',
      examples: [
        FormulaExample(
          problem: 'Вычислить lim(x→0) (e^x - 1)/x',
          given: 'классическая форма',
          solution: 'Шаг 1: Применяем формулу\n  = 1',
          answer: 'lim = 1',
        ),
        FormulaExample(
          problem: 'Вычислить lim(x→0) (e^(2x) - 1)/x',
          given: 'показатель 2x',
          solution: 'Шаг 1: Умножим на 2/2\n  = lim(x→0) 2·(e^(2x) - 1)/(2x)\n\nШаг 2: Замена u = 2x\n  = 2·lim(u→0) (e^u - 1)/u\n\nШаг 3: = 2·1 = 2',
          answer: 'lim = 2',
        ),
        FormulaExample(
          problem: 'Вычислить lim(x→0) (e^x - 1)/(2x)',
          given: 'знаменатель 2x',
          solution: 'Шаг 1: Преобразуем\n  = (1/2)·lim(x→0) (e^x - 1)/x\n\nШаг 2: = (1/2)·1\n\nШаг 3: = 1/2',
          answer: 'lim = 1/2',
        ),
      ],
    ),

    Formula(
      id: 'm_lim_04',
      title: 'Предел логарифма',
      latex: r'\lim_{x \to 0} \frac{\ln(1+x)}{x} = 1',
      description: 'Важный предел для логарифмической функции',
      category: FormulaCategory.mathematics,
      subcategory: 'Математический анализ: Пределы',
      examples: [
        FormulaExample(
          problem: 'Вычислить lim(x→0) ln(1+x)/x',
          given: 'классическая форма',
          solution: 'Шаг 1: Применяем формулу\n  = 1',
          answer: 'lim = 1',
        ),
        FormulaExample(
          problem: 'Вычислить lim(x→0) ln(1+3x)/x',
          given: 'аргумент 1+3x',
          solution: 'Шаг 1: Умножим на 3/3\n  = 3·lim(x→0) ln(1+3x)/(3x)\n\nШаг 2: Замена u = 3x\n  = 3·lim(u→0) ln(1+u)/u\n\nШаг 3: = 3·1 = 3',
          answer: 'lim = 3',
        ),
        FormulaExample(
          problem: 'Вычислить lim(x→0) ln(1+x)/(2x)',
          given: 'знаменатель 2x',
          solution: 'Шаг 1: = (1/2)·lim(x→0) ln(1+x)/x\n\nШаг 2: = (1/2)·1\n\nШаг 3: = 1/2',
          answer: 'lim = 1/2',
        ),
      ],
    ),

    // ТРИГОНОМЕТРИЧЕСКИЕ УРАВНЕНИЯ
    Formula(
      id: 'm_trig_eq_01',
      title: 'Уравнение sin x = a',
      latex: r'x = (-1)^n \arcsin a + \pi n,\quad n \in \mathbb{Z}',
      description: 'Общее решение уравнения синус равен a, |a| ≤ 1',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Уравнения',
      examples: [
        FormulaExample(
          problem: 'Решить sin x = 1/2',
          given: 'a = 1/2',
          solution: 'Шаг 1: arcsin(1/2) = π/6\n\nШаг 2: x = (-1)ⁿ·π/6 + πn\n\nШаг 3: При n=0: x = π/6\n  При n=1: x = π - π/6 = 5π/6',
          answer: 'x = (-1)ⁿ·π/6 + πn',
        ),
        FormulaExample(
          problem: 'Решить sin x = 1',
          given: 'a = 1',
          solution: 'Шаг 1: arcsin 1 = π/2\n\nШаг 2: x = (-1)ⁿ·π/2 + πn\n\nШаг 3: Упрощаем\n  x = π/2 + 2πk, k∈Z',
          answer: 'x = π/2 + 2πk',
        ),
        FormulaExample(
          problem: 'Решить sin x = -1/2',
          given: 'a = -1/2',
          solution: 'Шаг 1: arcsin(-1/2) = -π/6\n\nШаг 2: x = (-1)ⁿ·(-π/6) + πn\n\nШаг 3: При n=0: x = -π/6\n  При n=1: x = π + π/6 = 7π/6',
          answer: 'x = (-1)ⁿ⁺¹·π/6 + πn',
        ),
      ],
    ),

    Formula(
      id: 'm_trig_eq_02',
      title: 'Уравнение cos x = a',
      latex: r'x = \pm \arccos a + 2\pi n,\quad n \in \mathbb{Z}',
      description: 'Общее решение уравнения косинус равен a, |a| ≤ 1',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Уравнения',
      examples: [
        FormulaExample(
          problem: 'Решить cos x = 1/2',
          given: 'a = 1/2',
          solution: 'Шаг 1: arccos(1/2) = π/3\n\nШаг 2: x = ±π/3 + 2πn\n\nШаг 3: x₁ = π/3 + 2πn\n  x₂ = -π/3 + 2πn',
          answer: 'x = ±π/3 + 2πn',
        ),
        FormulaExample(
          problem: 'Решить cos x = 0',
          given: 'a = 0',
          solution: 'Шаг 1: arccos 0 = π/2\n\nШаг 2: x = ±π/2 + 2πn\n\nШаг 3: Объединяем\n  x = π/2 + πk, k∈Z',
          answer: 'x = π/2 + πk',
        ),
        FormulaExample(
          problem: 'Решить cos x = -1',
          given: 'a = -1',
          solution: 'Шаг 1: arccos(-1) = π\n\nШаг 2: x = ±π + 2πn\n\nШаг 3: Упрощаем\n  x = π + 2πn',
          answer: 'x = π + 2πn',
        ),
      ],
    ),

    Formula(
      id: 'm_trig_eq_03',
      title: 'Уравнение tan x = a',
      latex: r'x = \arctan a + \pi n,\quad n \in \mathbb{Z}',
      description: 'Общее решение уравнения тангенс равен a',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Уравнения',
      examples: [
        FormulaExample(
          problem: 'Решить tan x = 1',
          given: 'a = 1',
          solution: 'Шаг 1: arctan 1 = π/4\n\nШаг 2: x = π/4 + πn\n\nШаг 3: При n=0: x = π/4\n  При n=1: x = 5π/4',
          answer: 'x = π/4 + πn',
        ),
        FormulaExample(
          problem: 'Решить tan x = √3',
          given: 'a = √3',
          solution: 'Шаг 1: arctan √3 = π/3\n\nШаг 2: x = π/3 + πn',
          answer: 'x = π/3 + πn',
        ),
        FormulaExample(
          problem: 'Решить tan x = 0',
          given: 'a = 0',
          solution: 'Шаг 1: arctan 0 = 0\n\nШаг 2: x = 0 + πn\n\nШаг 3: x = πn, n∈Z',
          answer: 'x = πn',
        ),
      ],
    ),

    // ДОПОЛНИТЕЛЬНАЯ ГЕОМЕТРИЯ
    Formula(
      id: 'm_geom_extra_01',
      title: 'Теорема косинусов',
      latex: r'c^2 = a^2 + b^2 - 2ab\cos\gamma',
      description: 'Обобщение теоремы Пифагора для произвольного треугольника',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Планиметрия',
      examples: [
        FormulaExample(
          problem: 'Найти сторону c, если a = 3, b = 4, γ = 60°',
          given: 'a = 3, b = 4, γ = 60°, cos 60° = 1/2',
          solution: 'Шаг 1: c² = 9 + 16 - 2·3·4·(1/2)\n\nШаг 2: = 25 - 12 = 13\n\nШаг 3: c = √13 ≈ 3.61',
          answer: 'c = √13 ≈ 3.61',
        ),
        FormulaExample(
          problem: 'Найти угол γ, если a = b = c = 5',
          given: 'равносторонний треугольник',
          solution: 'Шаг 1: 25 = 25 + 25 - 2·5·5·cos γ\n\nШаг 2: 25 = 50 - 50cos γ\n  50cos γ = 25\n\nШаг 3: cos γ = 1/2\n  γ = 60°',
          answer: 'γ = 60°',
        ),
        FormulaExample(
          problem: 'При γ = 90° получить теорему Пифагора',
          given: 'cos 90° = 0',
          solution: 'Шаг 1: c² = a² + b² - 2ab·0\n\nШаг 2: c² = a² + b²\n\nЭто теорема Пифагора!',
          answer: 'c² = a² + b²',
        ),
      ],
    ),

    Formula(
      id: 'm_geom_extra_02',
      title: 'Теорема синусов',
      latex: r'\frac{a}{\sin\alpha} = \frac{b}{\sin\beta} = \frac{c}{\sin\gamma} = 2R',
      description: 'Отношение сторон к синусам противолежащих углов равно диаметру описанной окружности',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Планиметрия',
      examples: [
        FormulaExample(
          problem: 'Найти b, если a = 10, α = 30°, β = 45°',
          given: 'sin 30° = 1/2, sin 45° = √2/2',
          solution: 'Шаг 1: a/sin α = b/sin β\n  10/(1/2) = b/(√2/2)\n\nШаг 2: 20 = b/(√2/2)\n\nШаг 3: b = 20·√2/2 = 10√2 ≈ 14.14',
          answer: 'b = 10√2',
        ),
        FormulaExample(
          problem: 'Найти R, если a = 6, α = 30°',
          given: 'a/sin α = 2R',
          solution: 'Шаг 1: 6/(1/2) = 2R\n\nШаг 2: 12 = 2R\n\nШаг 3: R = 6',
          answer: 'R = 6',
        ),
        FormulaExample(
          problem: 'В равностороннем треугольнике a = 6. Найти R',
          given: 'все углы 60°',
          solution: 'Шаг 1: a/sin 60° = 2R\n  6/(√3/2) = 2R\n\nШаг 2: 12/√3 = 2R\n\nШаг 3: R = 6/√3 = 2√3',
          answer: 'R = 2√3',
        ),
      ],
    ),

    Formula(
      id: 'm_geom_extra_03',
      title: 'Площадь параллелограмма',
      latex: r'S = ab\sin\alpha',
      description: 'Площадь через две стороны и угол между ними',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Планиметрия',
      examples: [
        FormulaExample(
          problem: 'Найти S, если a = 5, b = 8, α = 30°',
          given: 'sin 30° = 1/2',
          solution: 'Шаг 1: S = 5·8·(1/2)\n\nШаг 2: = 40·(1/2)\n\nШаг 3: = 20',
          answer: 'S = 20',
        ),
        FormulaExample(
          problem: 'Найти S квадрата со стороной 4',
          given: 'α = 90°, sin 90° = 1',
          solution: 'Шаг 1: S = 4·4·1\n\nШаг 2: = 16',
          answer: 'S = 16',
        ),
        FormulaExample(
          problem: 'Найти угол, если S = 12, a = 6, b = 8',
          given: 'S = 12',
          solution: 'Шаг 1: 12 = 6·8·sin α\n\nШаг 2: 12 = 48·sin α\n  sin α = 1/4\n\nШаг 3: α = arcsin(1/4) ≈ 14.5°',
          answer: 'α ≈ 14.5°',
        ),
      ],
    ),

    Formula(
      id: 'm_geom_extra_04',
      title: 'Площадь ромба',
      latex: r'S = \frac{d_1 \cdot d_2}{2}',
      description: 'Площадь через диагонали',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Планиметрия',
      examples: [
        FormulaExample(
          problem: 'Найти S, если d₁ = 6, d₂ = 8',
          given: 'd₁ = 6, d₂ = 8',
          solution: 'Шаг 1: S = (6·8)/2\n\nШаг 2: = 48/2\n\nШаг 3: = 24',
          answer: 'S = 24',
        ),
        FormulaExample(
          problem: 'Найти d₂, если S = 30, d₁ = 10',
          given: 'S = 30, d₁ = 10',
          solution: 'Шаг 1: 30 = (10·d₂)/2\n\nШаг 2: 30 = 5d₂\n\nШаг 3: d₂ = 6',
          answer: 'd₂ = 6',
        ),
        FormulaExample(
          problem: 'Диагонали ромба равны. Найти S, если d = 8',
          given: 'd₁ = d₂ = 8',
          solution: 'Шаг 1: S = (8·8)/2\n\nШаг 2: = 64/2\n\nШаг 3: = 32',
          answer: 'S = 32',
        ),
      ],
    ),

    Formula(
      id: 'm_geom_extra_05',
      title: 'Площадь трапеции',
      latex: r'S = \frac{(a+b)h}{2}',
      description: 'Площадь через основания и высоту',
      category: FormulaCategory.mathematics,
      subcategory: 'Геометрия: Планиметрия',
      examples: [
        FormulaExample(
          problem: 'Найти S, если a = 5, b = 9, h = 4',
          given: 'a = 5, b = 9, h = 4',
          solution: 'Шаг 1: S = (5 + 9)·4/2\n\nШаг 2: = 14·4/2\n\nШаг 3: = 56/2 = 28',
          answer: 'S = 28',
        ),
        FormulaExample(
          problem: 'Найти h, если S = 24, a = 3, b = 5',
          given: 'S = 24',
          solution: 'Шаг 1: 24 = (3 + 5)·h/2\n\nШаг 2: 24 = 8h/2 = 4h\n\nШаг 3: h = 6',
          answer: 'h = 6',
        ),
        FormulaExample(
          problem: 'Равнобедренная трапеция: a = 4, b = 10, h = 3',
          given: 'a = 4, b = 10, h = 3',
          solution: 'Шаг 1: S = (4 + 10)·3/2\n\nШаг 2: = 14·3/2\n\nШаг 3: = 21',
          answer: 'S = 21',
        ),
      ],
    ),
  ];
}
