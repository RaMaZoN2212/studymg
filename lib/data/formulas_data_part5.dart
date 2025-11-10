// Part 5: Additional Math Formulas - Vectors, Analytic Geometry, More Trigonometry
import '../models/formula.dart';
import '../models/formula_example.dart';

class FormulasDataPart5 {
  static final List<Formula> formulas = [
    // ВЕКТОРЫ
    Formula(
      id: 'm_vec_01',
      title: 'Длина вектора',
      latex: r'|\vec{a}| = \sqrt{x^2 + y^2}',
      description: 'Длина (модуль) вектора на плоскости',
      category: FormulaCategory.mathematics,
      subcategory: 'Векторы',
      examples: [
        FormulaExample(
          problem: 'Найти длину вектора a⃗(3; 4)',
          given: 'x = 3, y = 4',
          solution: 'Шаг 1: Возводим координаты в квадрат\n  x² = 3² = 9\n  y² = 4² = 16\n\nШаг 2: Складываем квадраты\n  x² + y² = 9 + 16 = 25\n\nШаг 3: Извлекаем корень\n  |a⃗| = √25 = 5',
          answer: '|a⃗| = 5',
        ),
        FormulaExample(
          problem: 'Найти длину вектора b⃗(5; 12)',
          given: 'x = 5, y = 12',
          solution: 'Шаг 1: Возводим в квадрат\n  5² = 25, 12² = 144\n\nШаг 2: Суммируем\n  25 + 144 = 169\n\nШаг 3: Корень\n  |b⃗| = √169 = 13',
          answer: '|b⃗| = 13',
        ),
        FormulaExample(
          problem: 'Найти длину вектора c⃗(1; 1)',
          given: 'x = 1, y = 1',
          solution: 'Шаг 1: Квадраты координат\n  1² = 1, 1² = 1\n\nШаг 2: Сумма\n  1 + 1 = 2\n\nШаг 3: Корень\n  |c⃗| = √2 ≈ 1.414',
          answer: '|c⃗| = √2 ≈ 1.414',
        ),
      ],
    ),
    
    Formula(
      id: 'm_vec_02',
      title: 'Скалярное произведение векторов',
      latex: r'\vec{a} \cdot \vec{b} = x_1x_2 + y_1y_2',
      description: 'Скалярное произведение векторов через координаты',
      category: FormulaCategory.mathematics,
      subcategory: 'Векторы',
      examples: [
        FormulaExample(
          problem: 'Найти скалярное произведение a⃗(2; 3) и b⃗(4; 5)',
          given: 'a⃗(2; 3), b⃗(4; 5)',
          solution: 'Шаг 1: Умножаем первые координаты\n  x₁ · x₂ = 2 · 4 = 8\n\nШаг 2: Умножаем вторые координаты\n  y₁ · y₂ = 3 · 5 = 15\n\nШаг 3: Складываем результаты\n  a⃗ · b⃗ = 8 + 15 = 23',
          answer: 'a⃗ · b⃗ = 23',
        ),
        FormulaExample(
          problem: 'Найти скалярное произведение c⃗(1; -2) и d⃗(3; 4)',
          given: 'c⃗(1; -2), d⃗(3; 4)',
          solution: 'Шаг 1: Первые координаты\n  1 · 3 = 3\n\nШаг 2: Вторые координаты\n  (-2) · 4 = -8\n\nШаг 3: Сумма\n  c⃗ · d⃗ = 3 + (-8) = -5',
          answer: 'c⃗ · d⃗ = -5',
        ),
        FormulaExample(
          problem: 'Проверить перпендикулярность векторов e⃗(2; 3) и f⃗(-3; 2)',
          given: 'e⃗(2; 3), f⃗(-3; 2)',
          solution: 'Шаг 1: Скалярное произведение\n  e⃗ · f⃗ = 2·(-3) + 3·2\n\nШаг 2: Вычисляем\n  = -6 + 6 = 0\n\nШаг 3: Вывод\n  Если скалярное произведение = 0, векторы перпендикулярны',
          answer: 'Векторы перпендикулярны',
        ),
      ],
    ),
    
    Formula(
      id: 'm_vec_03',
      title: 'Угол между векторами',
      latex: r'\cos\alpha = \frac{\vec{a} \cdot \vec{b}}{|\vec{a}| \cdot |\vec{b}|}',
      description: 'Косинус угла между двумя векторами',
      category: FormulaCategory.mathematics,
      subcategory: 'Векторы',
      examples: [
        FormulaExample(
          problem: 'Найти угол между векторами a⃗(3; 4) и b⃗(4; 3)',
          given: 'a⃗(3; 4), b⃗(4; 3)',
          solution: 'Шаг 1: Скалярное произведение\n  a⃗ · b⃗ = 3·4 + 4·3 = 12 + 12 = 24\n\nШаг 2: Длины векторов\n  |a⃗| = √(9+16) = √25 = 5\n  |b⃗| = √(16+9) = √25 = 5\n\nШаг 3: Косинус угла\n  cos α = 24/(5·5) = 24/25 = 0.96\n\nШаг 4: Угол\n  α = arccos(0.96) ≈ 16.3°',
          answer: 'α ≈ 16.3°',
        ),
        FormulaExample(
          problem: 'Найти угол между векторами c⃗(1; 0) и d⃗(1; 1)',
          given: 'c⃗(1; 0), d⃗(1; 1)',
          solution: 'Шаг 1: Скалярное произведение\n  c⃗ · d⃗ = 1·1 + 0·1 = 1\n\nШаг 2: Длины\n  |c⃗| = √1 = 1\n  |d⃗| = √2\n\nШаг 3: Косинус\n  cos α = 1/(1·√2) = 1/√2 = √2/2\n\nШаг 4: Угол\n  α = 45°',
          answer: 'α = 45°',
        ),
        FormulaExample(
          problem: 'Найти cos угла между векторами e⃗(1; 1) и f⃗(-1; 1)',
          given: 'e⃗(1; 1), f⃗(-1; 1)',
          solution: 'Шаг 1: Скалярное произведение\n  e⃗ · f⃗ = 1·(-1) + 1·1 = 0\n\nШаг 2: Вывод\n  cos α = 0, значит α = 90°\n\nВекторы перпендикулярны',
          answer: 'α = 90° (перпендикулярны)',
        ),
      ],
    ),
    
    // АНАЛИТИЧЕСКАЯ ГЕОМЕТРИЯ
    Formula(
      id: 'm_geom_12',
      title: 'Расстояние между двумя точками',
      latex: r'd = \sqrt{(x_2-x_1)^2 + (y_2-y_1)^2}',
      description: 'Расстояние между точками на плоскости',
      category: FormulaCategory.mathematics,
      subcategory: 'Аналитическая геометрия',
      examples: [
        FormulaExample(
          problem: 'Найти расстояние между A(1; 2) и B(4; 6)',
          given: 'A(1; 2), B(4; 6)',
          solution: 'Шаг 1: Находим разности координат\n  x₂ - x₁ = 4 - 1 = 3\n  y₂ - y₁ = 6 - 2 = 4\n\nШаг 2: Возводим в квадрат\n  (x₂-x₁)² = 3² = 9\n  (y₂-y₁)² = 4² = 16\n\nШаг 3: Складываем и извлекаем корень\n  d = √(9 + 16) = √25 = 5',
          answer: 'd = 5',
        ),
        FormulaExample(
          problem: 'Найти расстояние между C(0; 0) и D(3; 4)',
          given: 'C(0; 0), D(3; 4)',
          solution: 'Шаг 1: Разности координат\n  Δx = 3 - 0 = 3\n  Δy = 4 - 0 = 4\n\nШаг 2: Квадраты\n  3² = 9, 4² = 16\n\nШаг 3: Корень из суммы\n  d = √(9+16) = √25 = 5',
          answer: 'd = 5',
        ),
        FormulaExample(
          problem: 'Найти расстояние между E(-1; 2) и F(2; -2)',
          given: 'E(-1; 2), F(2; -2)',
          solution: 'Шаг 1: Разности\n  Δx = 2-(-1) = 3\n  Δy = -2-2 = -4\n\nШаг 2: Квадраты\n  3² = 9\n  (-4)² = 16\n\nШаг 3: Расстояние\n  d = √(9+16) = √25 = 5',
          answer: 'd = 5',
        ),
      ],
    ),
    
    Formula(
      id: 'm_geom_13',
      title: 'Уравнение прямой',
      latex: r'y = kx + b',
      description: 'Уравнение прямой с угловым коэффициентом k',
      category: FormulaCategory.mathematics,
      subcategory: 'Аналитическая геометрия',
      examples: [
        FormulaExample(
          problem: 'Составить уравнение прямой через точки A(0; 2) и B(3; 8)',
          given: 'A(0; 2), B(3; 8)',
          solution: 'Шаг 1: Находим угловой коэффициент\n  k = (y₂-y₁)/(x₂-x₁) = (8-2)/(3-0) = 6/3 = 2\n\nШаг 2: Находим b (используя точку A)\n  y = kx + b\n  2 = 2·0 + b\n  b = 2\n\nШаг 3: Записываем уравнение\n  y = 2x + 2',
          answer: 'y = 2x + 2',
        ),
        FormulaExample(
          problem: 'Составить уравнение прямой через C(1; 3) и D(3; 7)',
          given: 'C(1; 3), D(3; 7)',
          solution: 'Шаг 1: Угловой коэффициент\n  k = (7-3)/(3-1) = 4/2 = 2\n\nШаг 2: Подставляем точку C\n  3 = 2·1 + b\n  b = 3 - 2 = 1\n\nШаг 3: Уравнение\n  y = 2x + 1',
          answer: 'y = 2x + 1',
        ),
        FormulaExample(
          problem: 'Составить уравнение прямой через E(2; 5) с наклоном k = 3',
          given: 'E(2; 5), k = 3',
          solution: 'Шаг 1: Подставляем в формулу\n  y = kx + b\n  5 = 3·2 + b\n\nШаг 2: Находим b\n  5 = 6 + b\n  b = -1\n\nШаг 3: Записываем уравнение\n  y = 3x - 1',
          answer: 'y = 3x - 1',
        ),
      ],
    ),
    
    Formula(
      id: 'm_geom_14',
      title: 'Уравнение окружности',
      latex: r'(x-a)^2 + (y-b)^2 = r^2',
      description: 'Уравнение окружности с центром в точке (a; b) и радиусом r',
      category: FormulaCategory.mathematics,
      subcategory: 'Аналитическая геометрия',
      examples: [
        FormulaExample(
          problem: 'Составить уравнение окружности с центром O(2; 3) и радиусом r = 5',
          given: 'Центр O(2; 3), r = 5',
          solution: 'Шаг 1: Записываем формулу\n  (x-a)² + (y-b)² = r²\n\nШаг 2: Подставляем значения\n  a = 2, b = 3, r = 5\n\nШаг 3: Получаем уравнение\n  (x-2)² + (y-3)² = 25',
          answer: '(x-2)² + (y-3)² = 25',
        ),
        FormulaExample(
          problem: 'Найти центр и радиус окружности (x-1)² + (y+2)² = 16',
          given: 'Уравнение: (x-1)² + (y+2)² = 16',
          solution: 'Шаг 1: Сравниваем с формулой\n  (x-a)² + (y-b)² = r²\n\nШаг 2: Определяем a и b\n  x-1 → a = 1\n  y+2 = y-(-2) → b = -2\n\nШаг 3: Находим радиус\n  r² = 16 → r = 4\n\nЦентр: (1; -2), радиус: 4',
          answer: 'Центр (1; -2), r = 4',
        ),
        FormulaExample(
          problem: 'Составить уравнение окружности с центром в начале координат и r = 3',
          given: 'O(0; 0), r = 3',
          solution: 'Шаг 1: Формула\n  (x-0)² + (y-0)² = 3²\n\nШаг 2: Упрощаем\n  x² + y² = 9',
          answer: 'x² + y² = 9',
        ),
      ],
    ),
    
    // ТРИГОНОМЕТРИЯ - ДОПОЛНИТЕЛЬНЫЕ ФОРМУЛЫ
    Formula(
      id: 'm_trig_14',
      title: 'Формула половинного угла для синуса',
      latex: r'\sin\frac{\alpha}{2} = \pm\sqrt{\frac{1-\cos\alpha}{2}}',
      description: 'Синус половинного угла через косинус полного угла',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Дополнительные формулы',
      examples: [
        FormulaExample(
          problem: 'Найти sin 15°, зная cos 30° = √3/2',
          given: 'α = 30°, cos 30° = √3/2',
          solution: 'Шаг 1: Применяем формулу\n  sin 15° = sin(30°/2)\n\nШаг 2: Подставляем\n  sin 15° = √[(1 - √3/2)/2]\n\nШаг 3: Упрощаем числитель\n  = √[(2 - √3)/4]\n\nШаг 4: Выносим из-под корня\n  = √(2 - √3)/2',
          answer: 'sin 15° = √(2-√3)/2',
        ),
        FormulaExample(
          problem: 'Найти sin 22.5°, зная cos 45° = √2/2',
          given: 'α = 45°, cos 45° = √2/2',
          solution: 'Шаг 1: Формула\n  sin 22.5° = √[(1 - √2/2)/2]\n\nШаг 2: Упрощаем\n  = √[(2 - √2)/4]\n\nШаг 3: Результат\n  = √(2 - √2)/2',
          answer: 'sin 22.5° = √(2-√2)/2',
        ),
        FormulaExample(
          problem: 'Найти sin α/2, если cos α = 0.6',
          given: 'cos α = 0.6',
          solution: 'Шаг 1: Применяем формулу\n  sin α/2 = √[(1 - 0.6)/2]\n\nШаг 2: Вычисляем\n  = √[0.4/2] = √0.2\n\nШаг 3: Приближенно\n  ≈ 0.447',
          answer: 'sin α/2 ≈ 0.447',
        ),
      ],
    ),
    
    Formula(
      id: 'm_trig_15',
      title: 'Формула половинного угла для косинуса',
      latex: r'\cos\frac{\alpha}{2} = \pm\sqrt{\frac{1+\cos\alpha}{2}}',
      description: 'Косинус половинного угла через косинус полного угла',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Дополнительные формулы',
      examples: [
        FormulaExample(
          problem: 'Найти cos 15°, зная cos 30° = √3/2',
          given: 'α = 30°, cos 30° = √3/2',
          solution: 'Шаг 1: Применяем формулу\n  cos 15° = √[(1 + √3/2)/2]\n\nШаг 2: Упрощаем числитель\n  = √[(2 + √3)/4]\n\nШаг 3: Выносим\n  = √(2 + √3)/2',
          answer: 'cos 15° = √(2+√3)/2',
        ),
        FormulaExample(
          problem: 'Найти cos 22.5°, зная cos 45° = √2/2',
          given: 'α = 45°',
          solution: 'Шаг 1: Формула\n  cos 22.5° = √[(1 + √2/2)/2]\n\nШаг 2: Упрощаем\n  = √[(2 + √2)/4]\n\nШаг 3: Результат\n  = √(2 + √2)/2',
          answer: 'cos 22.5° = √(2+√2)/2',
        ),
        FormulaExample(
          problem: 'Найти cos α/2, если cos α = 0.6',
          given: 'cos α = 0.6',
          solution: 'Шаг 1: Применяем формулу\n  cos α/2 = √[(1 + 0.6)/2]\n\nШаг 2: Вычисляем\n  = √[1.6/2] = √0.8\n\nШаг 3: Приближенно\n  ≈ 0.894',
          answer: 'cos α/2 ≈ 0.894',
        ),
      ],
    ),
    
    // НЕРАВЕНСТВА
    Formula(
      id: 'm_ineq_01',
      title: 'Неравенство средних (среднее арифметическое ≥ среднее геометрическое)',
      latex: r'\frac{a+b}{2} \geq \sqrt{ab}',
      description: 'Для положительных чисел a и b. Равенство при a = b',
      category: FormulaCategory.mathematics,
      subcategory: 'Неравенства',
      examples: [
        FormulaExample(
          problem: 'Проверить неравенство для a = 4 и b = 9',
          given: 'a = 4, b = 9',
          solution: 'Шаг 1: Среднее арифметическое\n  (a+b)/2 = (4+9)/2 = 13/2 = 6.5\n\nШаг 2: Среднее геометрическое\n  √(ab) = √(4·9) = √36 = 6\n\nШаг 3: Сравниваем\n  6.5 ≥ 6 ✓\n\nНеравенство выполняется',
          answer: '6.5 ≥ 6 ✓',
        ),
        FormulaExample(
          problem: 'Найти минимум выражения x + 4/x при x > 0',
          given: 'f(x) = x + 4/x, x > 0',
          solution: 'Шаг 1: Применяем неравенство средних\n  (x + 4/x)/2 ≥ √(x · 4/x)\n\nШаг 2: Упрощаем правую часть\n  √(4x/x) = √4 = 2\n\nШаг 3: Умножаем на 2\n  x + 4/x ≥ 4\n\nМинимум достигается при x = 4/x\n  x² = 4, x = 2',
          answer: 'min = 4 при x = 2',
        ),
        FormulaExample(
          problem: 'Доказать, что a² + b² ≥ 2ab для любых a, b',
          given: 'Любые числа a, b',
          solution: 'Шаг 1: Преобразуем неравенство\n  a² + b² - 2ab ≥ 0\n\nШаг 2: Узнаем формулу\n  (a - b)² ≥ 0\n\nШаг 3: Вывод\n  Квадрат любого числа ≥ 0\n\nРавенство при a = b',
          answer: 'Доказано: (a-b)² ≥ 0',
        ),
      ],
    ),
    
    // ФУНКЦИИ
    Formula(
      id: 'm_func_01',
      title: 'Квадратичная функция (вершина параболы)',
      latex: r'x_0 = -\frac{b}{2a},\quad y_0 = f(x_0)',
      description: 'Координаты вершины параболы y = ax² + bx + c',
      category: FormulaCategory.mathematics,
      subcategory: 'Функции',
      examples: [
        FormulaExample(
          problem: 'Найти вершину параболы y = x² - 4x + 3',
          given: 'a = 1, b = -4, c = 3',
          solution: 'Шаг 1: Находим x₀\n  x₀ = -b/(2a) = -(-4)/(2·1) = 4/2 = 2\n\nШаг 2: Находим y₀\n  y₀ = 2² - 4·2 + 3\n  = 4 - 8 + 3 = -1\n\nШаг 3: Вершина\n  V(2; -1)',
          answer: 'Вершина: (2; -1)',
        ),
        FormulaExample(
          problem: 'Найти вершину параболы y = -2x² + 8x - 5',
          given: 'a = -2, b = 8, c = -5',
          solution: 'Шаг 1: x₀\n  x₀ = -8/(2·(-2)) = -8/(-4) = 2\n\nШаг 2: y₀\n  y₀ = -2·4 + 8·2 - 5\n  = -8 + 16 - 5 = 3\n\nШаг 3: Координаты\n  V(2; 3)',
          answer: 'Вершина: (2; 3)',
        ),
        FormulaExample(
          problem: 'Найти вершину y = 3x² + 6x + 1',
          given: 'a = 3, b = 6, c = 1',
          solution: 'Шаг 1: Абсцисса вершины\n  x₀ = -6/(2·3) = -6/6 = -1\n\nШаг 2: Ордината\n  y₀ = 3·1 - 6 + 1 = -2\n\nВершина: V(-1; -2)',
          answer: 'Вершина: (-1; -2)',
        ),
      ],
    ),
  ];
}
