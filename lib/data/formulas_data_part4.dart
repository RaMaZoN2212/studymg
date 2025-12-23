// Part 4: Physics Formulas
import '../models/formula.dart';
import '../models/formula_example.dart';

class FormulasDataPart4 {
  static final List<Formula> formulas = [
    // МЕХАНИКА - КИНЕМАТИКА
    Formula(
      id: 'p_mech_01',
      title: 'Скорость',
      latex: r'v = \frac{s}{t}',
      description: 'Скорость равномерного движения',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Кинематика',
      examples: [
        FormulaExample(
          problem: 'Найти скорость, если пройдено 120 км за 2 часа',
          given: 's = 120 км, t = 2 ч',
          solution: 'v = 120 / 2 = 60 км/ч',
          answer: 'v = 60 км/ч',
        ),
      ],
    ),
    
    Formula(
      id: 'p_mech_02',
      title: 'Ускорение',
      latex: r'a = \frac{v - v_0}{t}',
      description: 'Ускорение при равноускоренном движении',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Кинематика',
      examples: [
        FormulaExample(
          problem: 'Найти ускорение, если v₀ = 10 м/с, v = 30 м/с, t = 4 с',
          given: 'v₀ = 10 м/с, v = 30 м/с, t = 4 с',
          solution: 'a = (30 - 10) / 4 = 5 м/с²',
          answer: 'a = 5 м/с²',
        ),
      ],
    ),
    
    Formula(
      id: 'p_mech_03',
      title: 'Путь при равноускоренном движении',
      latex: r's = v_0 t + \frac{at^2}{2}',
      description: 'Перемещение при равноускоренном движении',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Кинематика',
      examples: [
        FormulaExample(
          problem: 'Найти путь, если v₀ = 0, a = 2 м/с², t = 5 с',
          given: 'v₀ = 0, a = 2 м/с², t = 5 с',
          solution: 's = 0 + (2 · 25)/2 = 25 м',
          answer: 's = 25 м',
        ),
      ],
    ),
    
    // МЕХАНИКА - ДИНАМИКА
    Formula(
      id: 'p_mech_04',
      title: 'Второй закон Ньютона',
      latex: r'F = ma',
      description: 'Сила равна произведению массы на ускорение',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Динамика',
      examples: [
        FormulaExample(
          problem: 'Найти силу для тела массой 5 кг с ускорением 2 м/с²',
          given: 'm = 5 кг, a = 2 м/с²',
          solution: 'F = 5 · 2 = 10 Н',
          answer: 'F = 10 Н',
        ),
      ],
    ),
    
    Formula(
      id: 'p_mech_05',
      title: 'Сила тяжести',
      latex: r'F = mg',
      description: 'Сила тяжести, где g = 10 м/с²',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Динамика',
      examples: [
        FormulaExample(
          problem: 'Найти силу тяжести для тела массой 7 кг',
          given: 'm = 7 кг, g = 10 м/с²',
          solution: 'F = 7 · 10 = 70 Н',
          answer: 'F = 70 Н',
        ),
      ],
    ),
    
    Formula(
      id: 'p_mech_06',
      title: 'Сила упругости (закон Гука)',
      latex: r'F = -kx',
      description: 'Сила упругости пропорциональна деформации',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Динамика',
      examples: [
        FormulaExample(
          problem: 'Найти силу упругости пружины с k = 100 Н/м при растяжении на 0.1 м',
          given: 'k = 100 Н/м, x = 0.1 м',
          solution: 'F = 100 · 0.1 = 10 Н',
          answer: 'F = 10 Н',
        ),
      ],
    ),
    
    Formula(
      id: 'p_mech_07',
      title: 'Сила трения',
      latex: r'F_{тр} = \mu N',
      description: 'Сила трения скольжения',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Динамика',
      examples: [
        FormulaExample(
          problem: 'Найти силу трения при μ = 0.3 и N = 50 Н',
          given: 'μ = 0.3, N = 50 Н',
          solution: 'F = 0.3 · 50 = 15 Н',
          answer: 'F = 15 Н',
        ),
      ],
    ),
    
    // МЕХАНИКА - ЭНЕРГИЯ
    Formula(
      id: 'p_mech_08',
      title: 'Кинетическая энергия',
      latex: r'E_k = \frac{mv^2}{2}',
      description: 'Кинетическая энергия тела',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Энергия',
      examples: [
        FormulaExample(
          problem: 'Найти кинетическую энергию тела массой 4 кг со скоростью 5 м/с',
          given: 'm = 4 кг, v = 5 м/с',
          solution: 'Eₖ = (4 · 25)/2 = 50 Дж',
          answer: 'Eₖ = 50 Дж',
        ),
      ],
    ),
    
    Formula(
      id: 'p_mech_09',
      title: 'Потенциальная энергия',
      latex: r'E_p = mgh',
      description: 'Потенциальная энергия тела на высоте h',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Энергия',
      examples: [
        FormulaExample(
          problem: 'Найти потенциальную энергию тела массой 3 кг на высоте 5 м',
          given: 'm = 3 кг, g = 10 м/с², h = 5 м',
          solution: 'Eₚ = 3 · 10 · 5 = 150 Дж',
          answer: 'Eₚ = 150 Дж',
        ),
      ],
    ),
    
    Formula(
      id: 'p_mech_10',
      title: 'Импульс',
      latex: r'p = mv',
      description: 'Импульс тела',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Энергия',
      examples: [
        FormulaExample(
          problem: 'Найти импульс тела массой 4 кг, движущегося со скоростью 5 м/с',
          given: 'm = 4 кг, v = 5 м/с',
          solution: 'p = 4 · 5 = 20 кг·м/с',
          answer: 'p = 20 кг·м/с',
        ),
      ],
    ),
    
    Formula(
      id: 'p_mech_11',
      title: 'Механическая работа',
      latex: r'A = Fs\cos\alpha',
      description: 'Работа силы',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Энергия',
      examples: [
        FormulaExample(
          problem: 'Найти работу силы 20 Н на пути 5 м',
          given: 'F = 20 Н, s = 5 м, α = 0°',
          solution: 'A = 20 · 5 · 1 = 100 Дж',
          answer: 'A = 100 Дж',
        ),
      ],
    ),
    
    Formula(
      id: 'p_mech_12',
      title: 'Мощность',
      latex: r'P = \frac{A}{t} = Fv',
      description: 'Мощность механической работы',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Энергия',
      examples: [
        FormulaExample(
          problem: 'Найти мощность, если работа 600 Дж выполнена за 2 с',
          given: 'A = 600 Дж, t = 2 с',
          solution: 'P = 600 / 2 = 300 Вт',
          answer: 'P = 300 Вт',
        ),
      ],
    ),
    
    // ТЕРМОДИНАМИКА
    Formula(
      id: 'p_therm_01',
      title: 'Количество теплоты при нагревании',
      latex: r'Q = cm\Delta t',
      description: 'Количество теплоты для нагревания',
      category: FormulaCategory.physics,
      subcategory: 'Термодинамика',
      examples: [
        FormulaExample(
          problem: 'Найти Q для нагрева 2 кг воды (c = 4200) на 80°C',
          given: 'c = 4200 Дж/(кг·°C), m = 2 кг, Δt = 80°C',
          solution: 'Q = 4200 · 2 · 80 = 672000 Дж',
          answer: 'Q = 672 кДж',
        ),
      ],
    ),
    
    Formula(
      id: 'p_therm_02',
      title: 'Количество теплоты при плавлении',
      latex: r'Q = \lambda m',
      description: 'Количество теплоты при фазовом переходе',
      category: FormulaCategory.physics,
      subcategory: 'Термодинамика',
      examples: [
        FormulaExample(
          problem: 'Найти Q для плавления 0.5 кг льда (λ = 330000 Дж/кг)',
          given: 'λ = 330000 Дж/кг, m = 0.5 кг',
          solution: 'Q = 330000 · 0.5 = 165000 Дж',
          answer: 'Q = 165 кДж',
        ),
      ],
    ),
    
    Formula(
      id: 'p_therm_03',
      title: 'Уравнение состояния идеального газа',
      latex: r'PV = nRT',
      description: 'Уравнение Менделеева-Клапейрона',
      category: FormulaCategory.physics,
      subcategory: 'Термодинамика',
      examples: [
        FormulaExample(
          problem: 'Во сколько раз увеличится P, если T увеличить в 2 раза?',
          given: 'T₂ = 2T₁, V = const',
          solution: 'P₁/T₁ = P₂/T₂\nP₂ = 2P₁',
          answer: 'В 2 раза',
        ),
      ],
    ),
    
    Formula(
      id: 'p_therm_04',
      title: 'КПД тепловой машины',
      latex: r'\eta = \frac{A}{Q_1} = \frac{Q_1 - Q_2}{Q_1}',
      description: 'Коэффициент полезного действия',
      category: FormulaCategory.physics,
      subcategory: 'Термодинамика',
      examples: [
        FormulaExample(
          problem: 'Найти КПД, если Q₁ = 1000 Дж, A = 300 Дж',
          given: 'Q₁ = 1000 Дж, A = 300 Дж',
          solution: 'η = 300/1000 = 0.3 = 30%',
          answer: 'η = 30%',
        ),
      ],
    ),
    
    // ЭЛЕКТРИЧЕСТВО
    Formula(
      id: 'p_elec_01',
      title: 'Закон Ома',
      latex: r'I = \frac{U}{R}',
      description: 'Сила тока в цепи',
      category: FormulaCategory.physics,
      subcategory: 'Электричество',
      examples: [
        FormulaExample(
          problem: 'Найти силу тока при U = 12 В и R = 4 Ом',
          given: 'U = 12 В, R = 4 Ом',
          solution: 'I = 12 / 4 = 3 А',
          answer: 'I = 3 А',
        ),
      ],
    ),
    
    Formula(
      id: 'p_elec_02',
      title: 'Последовательное соединение',
      latex: r'R = R_1 + R_2 + ... + R_n',
      description: 'Общее сопротивление последовательных резисторов',
      category: FormulaCategory.physics,
      subcategory: 'Электричество',
      examples: [
        FormulaExample(
          problem: 'Найти общее сопротивление для R₁ = 3 Ом и R₂ = 5 Ом',
          given: 'R₁ = 3 Ом, R₂ = 5 Ом',
          solution: 'R = 3 + 5 = 8 Ом',
          answer: 'R = 8 Ом',
        ),
      ],
    ),
    
    Formula(
      id: 'p_elec_03',
      title: 'Параллельное соединение',
      latex: r'\frac{1}{R} = \frac{1}{R_1} + \frac{1}{R_2}',
      description: 'Общее сопротивление параллельных резисторов',
      category: FormulaCategory.physics,
      subcategory: 'Электричество',
      examples: [
        FormulaExample(
          problem: 'Найти общее сопротивление для R₁ = 6 Ом и R₂ = 3 Ом',
          given: 'R₁ = 6 Ом, R₂ = 3 Ом',
          solution: 'R = (6 · 3)/(6 + 3) = 2 Ом',
          answer: 'R = 2 Ом',
        ),
      ],
    ),
    
    Formula(
      id: 'p_elec_04',
      title: 'Мощность электрического тока',
      latex: r'P = UI = I^2R = \frac{U^2}{R}',
      description: 'Мощность в электрической цепи',
      category: FormulaCategory.physics,
      subcategory: 'Электричество',
      examples: [
        FormulaExample(
          problem: 'Найти мощность при U = 220 В и I = 2 А',
          given: 'U = 220 В, I = 2 А',
          solution: 'P = 220 · 2 = 440 Вт',
          answer: 'P = 440 Вт',
        ),
      ],
    ),
    
    Formula(
      id: 'p_elec_05',
      title: 'Закон Джоуля-Ленца',
      latex: r'Q = I^2Rt',
      description: 'Количество теплоты в проводнике',
      category: FormulaCategory.physics,
      subcategory: 'Электричество',
      examples: [
        FormulaExample(
          problem: 'Найти количество теплоты при I = 5 А, R = 4 Ом, t = 10 с',
          given: 'I = 5 А, R = 4 Ом, t = 10 с',
          solution: 'Q = 25 · 4 · 10 = 1000 Дж',
          answer: 'Q = 1 кДж',
        ),
      ],
    ),
    
    // ОПТИКА
    Formula(
      id: 'p_opt_01',
      title: 'Закон отражения',
      latex: r'\angle\alpha = \angle\beta',
      description: 'Угол падения равен углу отражения',
      category: FormulaCategory.physics,
      subcategory: 'Оптика',
      examples: [
        FormulaExample(
          problem: 'Найти угол отражения, если угол падения 30°',
          given: 'α = 30°',
          solution: 'β = 30°',
          answer: 'β = 30°',
        ),
      ],
    ),
    
    Formula(
      id: 'p_opt_02',
      title: 'Закон преломления',
      latex: r'\frac{\sin\alpha}{\sin\beta} = \frac{n_2}{n_1}',
      description: 'Закон Снеллиуса',
      category: FormulaCategory.physics,
      subcategory: 'Оптика',
      examples: [
        FormulaExample(
          problem: 'Луч переходит из воздуха (n₁=1) в воду (n₂=1.33) под углом 60°',
          given: 'n₁ = 1, n₂ = 1.33, α = 60°',
          solution: 'sin β = sin 60° / 1.33 ≈ 0.651\nβ ≈ 41°',
          answer: 'β ≈ 41°',
        ),
      ],
    ),
    
    Formula(
      id: 'p_opt_03',
      title: 'Формула тонкой линзы',
      latex: r'\frac{1}{F} = \frac{1}{d} + \frac{1}{f}',
      description: 'Связь фокусного расстояния с расстояниями до предмета и изображения',
      category: FormulaCategory.physics,
      subcategory: 'Оптика',
      examples: [
        FormulaExample(
          problem: 'Найти f, если F = 20 см и d = 30 см',
          given: 'F = 20 см, d = 30 см',
          solution: '1/f = 1/20 - 1/30 = 1/60\nf = 60 см',
          answer: 'f = 60 см',
        ),
      ],
    ),
    
    // АТОМНАЯ ФИЗИКА
    Formula(
      id: 'p_atom_01',
      title: 'Энергия фотона',
      latex: r'E = h\nu = \frac{hc}{\lambda}',
      description: 'Энергия фотона, h = 6.63·10⁻³⁴ Дж·с',
      category: FormulaCategory.physics,
      subcategory: 'Атомная физика',
      examples: [
        FormulaExample(
          problem: 'Найти энергию фотона с частотой 5·10¹⁴ Гц',
          given: 'ν = 5·10¹⁴ Гц, h = 6.63·10⁻³⁴ Дж·с',
          solution: 'E = 6.63·10⁻³⁴ · 5·10¹⁴ ≈ 3.32·10⁻¹⁹ Дж',
          answer: 'E ≈ 3.32·10⁻¹⁹ Дж',
        ),
      ],
    ),
    
    Formula(
      id: 'p_atom_02',
      title: 'Уравнение Эйнштейна для фотоэффекта',
      latex: r'h\nu = A + E_k',
      description: 'Уравнение фотоэффекта, A - работа выхода',
      category: FormulaCategory.physics,
      subcategory: 'Атомная физика',
      examples: [
        FormulaExample(
          problem: 'Найти Eₖ, если hν = 6·10⁻¹⁹ Дж и A = 3·10⁻¹⁹ Дж',
          given: 'hν = 6·10⁻¹⁹ Дж, A = 3·10⁻¹⁹ Дж',
          solution: 'Eₖ = 6·10⁻¹⁹ - 3·10⁻¹⁹ = 3·10⁻¹⁹ Дж',
          answer: 'Eₖ = 3·10⁻¹⁹ Дж',
        ),
      ],
    ),
    
    Formula(
      id: 'p_atom_03',
      title: 'Связь массы и энергии',
      latex: r'E = mc^2',
      description: 'Формула Эйнштейна, c = 3·10⁸ м/с',
      category: FormulaCategory.physics,
      subcategory: 'Атомная физика',
      examples: [
        FormulaExample(
          problem: 'Найти энергию, выделяющуюся при аннигиляции электрона (m = 9.1·10⁻³¹ кг)',
          given: 'm = 9.1·10⁻³¹ кг, c = 3·10⁸ м/с',
          solution: 'E = 9.1·10⁻³¹ · 9·10¹⁶ ≈ 8.2·10⁻¹⁴ Дж',
          answer: 'E ≈ 8.2·10⁻¹⁴ Дж',
        ),
      ],
    ),
  ];
}
