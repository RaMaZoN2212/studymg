// Part 9: Additional Physics - Momentum, Hydrostatics, Molecular Physics, Electromagnetism, Quantum Physics
import '../models/formula.dart';
import '../models/formula_example.dart';

class FormulasDataPart9 {
  static final List<Formula> formulas = [
    // МЕХАНИКА: ИМПУЛЬС
    Formula(
      id: 'p_momentum_01',
      title: 'Импульс тела',
      latex: r'\vec{p} = m\vec{v}',
      description: 'Импульс - произведение массы на скорость',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Импульс',
      examples: [
        FormulaExample(
          problem: 'Найти импульс автомобиля массой 1000 кг, движущегося со скоростью 20 м/с',
          given: 'm = 1000 кг, v = 20 м/с',
          solution: 'Шаг 1: Записываем формулу\n  p = mv\n\nШаг 2: Подставляем значения\n  p = 1000 · 20\n\nШаг 3: Вычисляем\n  p = 20000 кг·м/с',
          answer: 'p = 20000 кг·м/с',
        ),
        FormulaExample(
          problem: 'Найти скорость, если p = 6000 кг·м/с, m = 300 кг',
          given: 'p = 6000 кг·м/с, m = 300 кг',
          solution: 'Шаг 1: Из формулы v = p/m\n\nШаг 2: v = 6000/300\n\nШаг 3: v = 20 м/с',
          answer: 'v = 20 м/с',
        ),
        FormulaExample(
          problem: 'Сравнить импульсы: грузовик 5т со скоростью 10 м/с и легковой 1т со скоростью 30 м/с',
          given: 'm₁ = 5000 кг, v₁ = 10 м/с; m₂ = 1000 кг, v₂ = 30 м/с',
          solution: 'Шаг 1: p₁ = 5000 · 10 = 50000 кг·м/с\n\nШаг 2: p₂ = 1000 · 30 = 30000 кг·м/с\n\nШаг 3: p₁ > p₂\n  У грузовика больше',
          answer: 'p₁ = 50000 > p₂ = 30000',
        ),
      ],
    ),

    Formula(
      id: 'p_momentum_02',
      title: 'Импульс силы',
      latex: r'F\Delta t = \Delta p = m\Delta v',
      description: 'Импульс силы равен изменению импульса тела',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Импульс',
      examples: [
        FormulaExample(
          problem: 'Мяч массой 0.4 кг ударился о стену со скоростью 10 м/с и отскочил с той же скоростью. Найти изменение импульса',
          given: 'm = 0.4 кг, v₁ = 10 м/с, v₂ = -10 м/с',
          solution: 'Шаг 1: Начальный импульс\n  p₁ = 0.4 · 10 = 4 кг·м/с\n\nШаг 2: Конечный импульс\n  p₂ = 0.4 · (-10) = -4 кг·м/с\n\nШаг 3: Изменение\n  Δp = p₂ - p₁ = -4 - 4 = -8 кг·м/с',
          answer: '|Δp| = 8 кг·м/с',
        ),
        FormulaExample(
          problem: 'Автомобиль массой 1т разгоняется от 0 до 72 км/ч за 10 с. Найти среднюю силу',
          given: 'm = 1000 кг, v₁ = 0, v₂ = 20 м/с, Δt = 10 с',
          solution: 'Шаг 1: Δv = 20 - 0 = 20 м/с\n\nШаг 2: Δp = 1000 · 20 = 20000 кг·м/с\n\nШаг 3: F = Δp/Δt = 20000/10 = 2000 Н',
          answer: 'F = 2000 Н',
        ),
        FormulaExample(
          problem: 'Сила 500 Н действует 4 с на тело массой 100 кг. Найти изменение скорости',
          given: 'F = 500 Н, Δt = 4 с, m = 100 кг',
          solution: 'Шаг 1: FΔt = mΔv\n\nШаг 2: 500 · 4 = 100 · Δv\n  2000 = 100Δv\n\nШаг 3: Δv = 20 м/с',
          answer: 'Δv = 20 м/с',
        ),
      ],
    ),

    Formula(
      id: 'p_momentum_03',
      title: 'Закон сохранения импульса',
      latex: r'\vec{p}_1 + \vec{p}_2 = \vec{p}_1^\prime + \vec{p}_2^\prime',
      description: 'В замкнутой системе суммарный импульс сохраняется',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Импульс',
      examples: [
        FormulaExample(
          problem: 'Вагон массой 20 т движется со скоростью 2 м/с и сцепляется с неподвижным вагоном массой 30 т. Найти скорость после сцепки',
          given: 'm₁ = 20000 кг, v₁ = 2 м/с, m₂ = 30000 кг, v₂ = 0',
          solution: 'Шаг 1: Начальный импульс\n  p = 20000·2 + 30000·0 = 40000 кг·м/с\n\nШаг 2: После сцепки\n  (m₁ + m₂)v\' = 40000\n  50000v\' = 40000\n\nШаг 3: v\' = 0.8 м/с',
          answer: 'v\' = 0.8 м/с',
        ),
        FormulaExample(
          problem: 'Пушка массой 500 кг выстрелила снарядом 5 кг со скоростью 400 м/с. Найти скорость отдачи',
          given: 'M = 500 кг, m = 5 кг, v = 400 м/с',
          solution: 'Шаг 1: До выстрела p = 0\n\nШаг 2: После: mv + MV = 0\n  5·400 + 500·V = 0\n\nШаг 3: 2000 + 500V = 0\n  V = -4 м/с\n\n|V| = 4 м/с назад',
          answer: 'V = 4 м/с (назад)',
        ),
        FormulaExample(
          problem: 'Два тела массами 2 кг и 3 кг движутся навстречу со скоростями 5 м/с и 4 м/с. Найти скорость после неупругого столкновения',
          given: 'm₁ = 2 кг, v₁ = 5 м/с, m₂ = 3 кг, v₂ = -4 м/с',
          solution: 'Шаг 1: p₁ + p₂ = (m₁ + m₂)v\'\n  2·5 + 3·(-4) = 5v\'\n\nШаг 2: 10 - 12 = 5v\'\n  -2 = 5v\'\n\nШаг 3: v\' = -0.4 м/с',
          answer: 'v\' = 0.4 м/с (вправо)',
        ),
      ],
    ),

    // ГИДРОСТАТИКА
    Formula(
      id: 'p_hydro_01',
      title: 'Гидростатическое давление',
      latex: r'P = \rho gh',
      description: 'Давление столба жидкости на глубине h',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Гидростатика',
      examples: [
        FormulaExample(
          problem: 'Найти давление воды на глубине 10 м (ρ = 1000 кг/м³)',
          given: 'ρ = 1000 кг/м³, g = 10 м/с², h = 10 м',
          solution: 'Шаг 1: P = ρgh\n\nШаг 2: P = 1000 · 10 · 10\n\nШаг 3: P = 100000 Па = 100 кПа',
          answer: 'P = 100 кПа',
        ),
        FormulaExample(
          problem: 'На какой глубине давление 200 кПа? (вода)',
          given: 'P = 200000 Па, ρ = 1000 кг/м³',
          solution: 'Шаг 1: h = P/(ρg)\n\nШаг 2: h = 200000/(1000·10)\n\nШаг 3: h = 200000/10000 = 20 м',
          answer: 'h = 20 м',
        ),
        FormulaExample(
          problem: 'Сравнить давление на глубине 5 м в воде и в ртути (ρ_рт = 13600 кг/м³)',
          given: 'h = 5 м',
          solution: 'Шаг 1: P_воды = 1000·10·5 = 50000 Па\n\nШаг 2: P_рт = 13600·10·5 = 680000 Па\n\nШаг 3: P_рт/P_воды = 13.6 раз',
          answer: 'В ртути в 13.6 раз больше',
        ),
      ],
    ),

    Formula(
      id: 'p_hydro_02',
      title: 'Сила Архимеда',
      latex: r'F_A = \rho_{ж} gV',
      description: 'Выталкивающая сила, действующая на тело в жидкости',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Гидростатика',
      examples: [
        FormulaExample(
          problem: 'Найти силу Архимеда для тела объёмом 0.01 м³ в воде',
          given: 'V = 0.01 м³, ρ = 1000 кг/м³, g = 10 м/с²',
          solution: 'Шаг 1: F_A = ρgV\n\nШаг 2: F_A = 1000 · 10 · 0.01\n\nШаг 3: F_A = 100 Н',
          answer: 'F_A = 100 Н',
        ),
        FormulaExample(
          problem: 'Тело массой 5 кг и объёмом 0.006 м³ погружено в воду. Утонет или всплывёт?',
          given: 'm = 5 кг, V = 0.006 м³',
          solution: 'Шаг 1: Вес P = mg = 5·10 = 50 Н\n\nШаг 2: F_A = 1000·10·0.006 = 60 Н\n\nШаг 3: F_A > P → всплывёт',
          answer: 'Всплывёт (F_A = 60 Н > P = 50 Н)',
        ),
        FormulaExample(
          problem: 'Найти объём тела, если F_A = 200 Н (керосин, ρ = 800 кг/м³)',
          given: 'F_A = 200 Н, ρ = 800 кг/м³',
          solution: 'Шаг 1: V = F_A/(ρg)\n\nШаг 2: V = 200/(800·10)\n\nШаг 3: V = 200/8000 = 0.025 м³',
          answer: 'V = 0.025 м³ = 25 л',
        ),
      ],
    ),

    Formula(
      id: 'p_hydro_03',
      title: 'Условие плавания тел',
      latex: r'\rho_{тела} \leq \rho_{ж} \Rightarrow \text{плавает}',
      description: 'Тело плавает, если его плотность не больше плотности жидкости',
      category: FormulaCategory.physics,
      subcategory: 'Механика: Гидростатика',
      examples: [
        FormulaExample(
          problem: 'Лёд (ρ = 900 кг/м³) в воде (ρ = 1000 кг/м³). Будет плавать?',
          given: 'ρ_льда = 900 кг/м³, ρ_воды = 1000 кг/м³',
          solution: 'Шаг 1: Сравниваем плотности\n  ρ_льда < ρ_воды\n\nШаг 2: 900 < 1000\n\nШаг 3: Будет плавать',
          answer: 'Да, плавает',
        ),
        FormulaExample(
          problem: 'Какая часть льда над водой?',
          given: 'ρ_льда = 900 кг/м³, ρ_воды = 1000 кг/м³',
          solution: 'Шаг 1: Погружённая часть\n  V_погр/V = ρ_льда/ρ_воды = 900/1000 = 0.9\n\nШаг 2: Над водой\n  V_над/V = 1 - 0.9 = 0.1\n\nШаг 3: 10% над водой',
          answer: '10% над водой',
        ),
        FormulaExample(
          problem: 'Железный шар (ρ = 7800 кг/м³) в ртути (ρ = 13600 кг/м³)',
          given: 'ρ_Fe = 7800, ρ_Hg = 13600',
          solution: 'Шаг 1: ρ_Fe < ρ_Hg\n  7800 < 13600\n\nШаг 2: Будет плавать\n\nШаг 3: Погружён на 7800/13600 ≈ 57%',
          answer: 'Плавает, 57% под ртутью',
        ),
      ],
    ),

    // МОЛЕКУЛЯРНАЯ ФИЗИКА
    Formula(
      id: 'p_molec_01',
      title: 'Уравнение Менделеева-Клапейрона',
      latex: r'PV = \frac{m}{M}RT',
      description: 'Уравнение состояния идеального газа, R = 8.31 Дж/(моль·К)',
      category: FormulaCategory.physics,
      subcategory: 'Молекулярная физика',
      examples: [
        FormulaExample(
          problem: 'Найти давление 2 моль газа в объёме 0.1 м³ при T = 300 К',
          given: 'ν = 2 моль, V = 0.1 м³, T = 300 К, R = 8.31',
          solution: 'Шаг 1: PV = νRT\n  P = νRT/V\n\nШаг 2: P = 2·8.31·300/0.1\n\nШаг 3: P = 4986/0.1 = 49860 Па ≈ 50 кПа',
          answer: 'P ≈ 50 кПа',
        ),
        FormulaExample(
          problem: 'Найти массу кислорода O₂ (M = 32 г/моль) при P = 100 кПа, V = 0.5 м³, T = 273 К',
          given: 'P = 100000 Па, V = 0.5, T = 273, M = 0.032 кг/моль',
          solution: 'Шаг 1: m = PVM/(RT)\n\nШаг 2: m = 100000·0.5·0.032/(8.31·273)\n\nШаг 3: m = 1600/2268.6 ≈ 0.71 кг',
          answer: 'm ≈ 0.71 кг',
        ),
        FormulaExample(
          problem: 'Газ нагрели от 300 К до 600 К при V = const. Во сколько раз изменилось P?',
          given: 'T₁ = 300 К, T₂ = 600 К, V = const',
          solution: 'Шаг 1: P₁/T₁ = P₂/T₂\n\nШаг 2: P₂/P₁ = T₂/T₁\n\nШаг 3: P₂/P₁ = 600/300 = 2\n\nДавление увеличилось в 2 раза',
          answer: 'P увеличилось в 2 раза',
        ),
      ],
    ),

    Formula(
      id: 'p_molec_02',
      title: 'Средняя кинетическая энергия молекулы',
      latex: r'\bar{E}_k = \frac{3}{2}kT',
      description: 'Связь температуры и кинетической энергии, k = 1.38·10⁻²³ Дж/К (постоянная Больцмана)',
      category: FormulaCategory.physics,
      subcategory: 'Молекулярная физика',
      examples: [
        FormulaExample(
          problem: 'Найти E_k при T = 300 К',
          given: 'T = 300 К, k = 1.38·10⁻²³',
          solution: 'Шаг 1: E_k = (3/2)kT\n\nШаг 2: E_k = 1.5 · 1.38·10⁻²³ · 300\n\nШаг 3: E_k = 6.21·10⁻²¹ Дж',
          answer: 'E_k = 6.21·10⁻²¹ Дж',
        ),
        FormulaExample(
          problem: 'Во сколько раз увеличится E_k при нагреве от 300 К до 900 К?',
          given: 'T₁ = 300 К, T₂ = 900 К',
          solution: 'Шаг 1: E_k ~ T\n\nШаг 2: E₂/E₁ = T₂/T₁\n\nШаг 3: = 900/300 = 3\n\nВ 3 раза',
          answer: 'Увеличится в 3 раза',
        ),
        FormulaExample(
          problem: 'Найти температуру, если E_k = 6·10⁻²¹ Дж',
          given: 'E_k = 6·10⁻²¹',
          solution: 'Шаг 1: T = 2E_k/(3k)\n\nШаг 2: T = 2·6·10⁻²¹/(3·1.38·10⁻²³)\n\nШаг 3: T = 12/(4.14) ≈ 290 К',
          answer: 'T ≈ 290 К',
        ),
      ],
    ),

    Formula(
      id: 'p_molec_03',
      title: 'Средняя квадратичная скорость молекул',
      latex: r'\bar{v} = \sqrt{\frac{3kT}{m_0}} = \sqrt{\frac{3RT}{M}}',
      description: 'Связь скорости молекул с температурой',
      category: FormulaCategory.physics,
      subcategory: 'Молекулярная физика',
      examples: [
        FormulaExample(
          problem: 'Найти v для азота N₂ (M = 28 г/моль) при T = 300 К',
          given: 'M = 0.028 кг/моль, T = 300 К, R = 8.31',
          solution: 'Шаг 1: v = √(3RT/M)\n\nШаг 2: v = √(3·8.31·300/0.028)\n\nШаг 3: v = √(7479/0.028) = √267107 ≈ 517 м/с',
          answer: 'v ≈ 517 м/с',
        ),
        FormulaExample(
          problem: 'Сравнить скорости H₂ (M=2) и O₂ (M=32) при одинаковой T',
          given: 'M_H = 0.002, M_O = 0.032',
          solution: 'Шаг 1: v ~ 1/√M\n\nШаг 2: v_H/v_O = √(M_O/M_H)\n\nШаг 3: = √(32/2) = √16 = 4\n\nВодород в 4 раза быстрее',
          answer: 'v_H₂ в 4 раза больше v_O₂',
        ),
        FormulaExample(
          problem: 'Во сколько раз увеличится v при нагреве от 300 К до 1200 К?',
          given: 'T₁ = 300, T₂ = 1200',
          solution: 'Шаг 1: v ~ √T\n\nШаг 2: v₂/v₁ = √(T₂/T₁)\n\nШаг 3: = √(1200/300) = √4 = 2\n\nВ 2 раза',
          answer: 'v увеличится в 2 раза',
        ),
      ],
    ),

    // ЭЛЕКТРОМАГНЕТИЗМ (ДОПОЛНИТЕЛЬНО)
    Formula(
      id: 'p_em_01',
      title: 'ЭДС электромагнитной индукции',
      latex: r'\mathcal{E} = -\frac{d\Phi}{dt}',
      description: 'Закон Фарадея: ЭДС индукции пропорциональна скорости изменения магнитного потока',
      category: FormulaCategory.physics,
      subcategory: 'Электромагнетизм',
      examples: [
        FormulaExample(
          problem: 'Магнитный поток изменился от 0.5 Вб до 0.1 Вб за 0.2 с. Найти ЭДС',
          given: 'Φ₁ = 0.5 Вб, Φ₂ = 0.1 Вб, Δt = 0.2 с',
          solution: 'Шаг 1: ΔΦ = Φ₂ - Φ₁ = 0.1 - 0.5 = -0.4 Вб\n\nШаг 2: ε = -ΔΦ/Δt\n\nШаг 3: ε = -(-0.4)/0.2 = 0.4/0.2 = 2 В',
          answer: 'ε = 2 В',
        ),
        FormulaExample(
          problem: 'В катушке с 100 витками поток меняется от 0 до 0.01 Вб за 0.5 с. Найти ЭДС',
          given: 'N = 100, ΔΦ = 0.01 Вб, Δt = 0.5 с',
          solution: 'Шаг 1: Для N витков\n  ε = -NΔΦ/Δt\n\nШаг 2: ε = -100·0.01/0.5\n\nШаг 3: |ε| = 1/0.5 = 2 В',
          answer: 'ε = 2 В',
        ),
        FormulaExample(
          problem: 'ЭДС = 10 В, время 0.1 с. Найти изменение потока',
          given: 'ε = 10 В, Δt = 0.1 с',
          solution: 'Шаг 1: |ΔΦ| = |ε|·Δt\n\nШаг 2: |ΔΦ| = 10·0.1\n\nШаг 3: |ΔΦ| = 1 Вб',
          answer: '|ΔΦ| = 1 Вб',
        ),
      ],
    ),

    Formula(
      id: 'p_em_02',
      title: 'Магнитный поток',
      latex: r'\Phi = BS\cos\alpha',
      description: 'Магнитный поток через площадь S при угле α между B и нормалью',
      category: FormulaCategory.physics,
      subcategory: 'Электромагнетизм',
      examples: [
        FormulaExample(
          problem: 'Найти Φ через площадь 0.01 м² в поле B = 0.5 Тл, α = 0°',
          given: 'B = 0.5 Тл, S = 0.01 м², α = 0°',
          solution: 'Шаг 1: Φ = BS cos α\n\nШаг 2: cos 0° = 1\n\nШаг 3: Φ = 0.5·0.01·1 = 0.005 Вб',
          answer: 'Φ = 0.005 Вб = 5 мВб',
        ),
        FormulaExample(
          problem: 'Найти Φ, если рамка повёрнута на 60° к полю',
          given: 'B = 0.2 Тл, S = 0.05 м², α = 60°',
          solution: 'Шаг 1: cos 60° = 0.5\n\nШаг 2: Φ = 0.2·0.05·0.5\n\nШаг 3: Φ = 0.005 Вб',
          answer: 'Φ = 0.005 Вб',
        ),
        FormulaExample(
          problem: 'При каком угле Φ = 0?',
          given: 'Φ = 0',
          solution: 'Шаг 1: BS cos α = 0\n\nШаг 2: cos α = 0\n\nШаг 3: α = 90°\n\nПлоскость параллельна полю',
          answer: 'α = 90°',
        ),
      ],
    ),

    Formula(
      id: 'p_em_03',
      title: 'Энергия конденсатора',
      latex: r'W = \frac{CU^2}{2} = \frac{q^2}{2C}',
      description: 'Энергия, запасённая в заряженном конденсаторе',
      category: FormulaCategory.physics,
      subcategory: 'Электричество',
      examples: [
        FormulaExample(
          problem: 'Найти энергию конденсатора C = 10 мкФ при U = 100 В',
          given: 'C = 10·10⁻⁶ Ф, U = 100 В',
          solution: 'Шаг 1: W = CU²/2\n\nШаг 2: W = 10·10⁻⁶·(100)²/2\n\nШаг 3: W = 10·10⁻⁶·10000/2 = 0.05 Дж',
          answer: 'W = 0.05 Дж = 50 мДж',
        ),
        FormulaExample(
          problem: 'Во сколько раз увеличится W, если U увеличить в 2 раза?',
          given: 'U₂ = 2U₁',
          solution: 'Шаг 1: W ~ U²\n\nШаг 2: W₂/W₁ = (U₂/U₁)²\n\nШаг 3: = 2² = 4\n\nВ 4 раза',
          answer: 'W увеличится в 4 раза',
        ),
        FormulaExample(
          problem: 'Найти напряжение, если W = 0.02 Дж, C = 100 мкФ',
          given: 'W = 0.02, C = 100·10⁻⁶',
          solution: 'Шаг 1: U² = 2W/C\n\nШаг 2: U² = 2·0.02/(100·10⁻⁶)\n  = 0.04/10⁻⁴ = 400\n\nШаг 3: U = 20 В',
          answer: 'U = 20 В',
        ),
      ],
    ),

    // КВАНТОВАЯ ФИЗИКА
    Formula(
      id: 'p_quantum_01',
      title: 'Энергия фотона',
      latex: r'E = h\nu = \frac{hc}{\lambda}',
      description: 'Связь энергии фотона с частотой, h = 6.63·10⁻³⁴ Дж·с (постоянная Планка)',
      category: FormulaCategory.physics,
      subcategory: 'Квантовая физика',
      examples: [
        FormulaExample(
          problem: 'Найти E фотона с λ = 500 нм (зелёный свет)',
          given: 'λ = 500·10⁻⁹ м, h = 6.63·10⁻³⁴, c = 3·10⁸',
          solution: 'Шаг 1: E = hc/λ\n\nШаг 2: E = 6.63·10⁻³⁴·3·10⁸/(500·10⁻⁹)\n\nШаг 3: E = 19.89·10⁻²⁶/500·10⁻⁹\n  = 3.98·10⁻¹⁹ Дж',
          answer: 'E ≈ 4·10⁻¹⁹ Дж ≈ 2.5 эВ',
        ),
        FormulaExample(
          problem: 'Найти частоту, если E = 3·10⁻¹⁹ Дж',
          given: 'E = 3·10⁻¹⁹',
          solution: 'Шаг 1: ν = E/h\n\nШаг 2: ν = 3·10⁻¹⁹/(6.63·10⁻³⁴)\n\nШаг 3: ν ≈ 4.5·10¹⁴ Гц',
          answer: 'ν ≈ 4.5·10¹⁴ Гц',
        ),
        FormulaExample(
          problem: 'Сравнить энергии красного (λ = 700 нм) и синего (λ = 400 нм) света',
          given: 'λ_к = 700 нм, λ_с = 400 нм',
          solution: 'Шаг 1: E ~ 1/λ\n\nШаг 2: E_с/E_к = λ_к/λ_с\n\nШаг 3: = 700/400 = 1.75\n\nСиний в 1.75 раз энергичнее',
          answer: 'E_синего в 1.75 раз больше',
        ),
      ],
    ),

    Formula(
      id: 'p_quantum_02',
      title: 'Импульс фотона',
      latex: r'p = \frac{h}{\lambda} = \frac{E}{c}',
      description: 'Импульс фотона связан с длиной волны',
      category: FormulaCategory.physics,
      subcategory: 'Квантовая физика',
      examples: [
        FormulaExample(
          problem: 'Найти p фотона с λ = 600 нм',
          given: 'λ = 600·10⁻⁹ м, h = 6.63·10⁻³⁴',
          solution: 'Шаг 1: p = h/λ\n\nШаг 2: p = 6.63·10⁻³⁴/(600·10⁻⁹)\n\nШаг 3: p = 1.105·10⁻²⁷ кг·м/с',
          answer: 'p ≈ 1.1·10⁻²⁷ кг·м/с',
        ),
        FormulaExample(
          problem: 'Найти p через энергию E = 4·10⁻¹⁹ Дж',
          given: 'E = 4·10⁻¹⁹, c = 3·10⁸',
          solution: 'Шаг 1: p = E/c\n\nШаг 2: p = 4·10⁻¹⁹/(3·10⁸)\n\nШаг 3: p = 1.33·10⁻²⁷ кг·м/с',
          answer: 'p ≈ 1.3·10⁻²⁷ кг·м/с',
        ),
        FormulaExample(
          problem: 'Во сколько раз отличается p рентгена (λ = 1 нм) от видимого света (λ = 500 нм)?',
          given: 'λ₁ = 1 нм, λ₂ = 500 нм',
          solution: 'Шаг 1: p ~ 1/λ\n\nШаг 2: p₁/p₂ = λ₂/λ₁\n\nШаг 3: = 500/1 = 500\n\nВ 500 раз',
          answer: 'p_рентгена в 500 раз больше',
        ),
      ],
    ),

    Formula(
      id: 'p_quantum_03',
      title: 'Длина волны де Бройля',
      latex: r'\lambda = \frac{h}{p} = \frac{h}{mv}',
      description: 'Волновые свойства частиц: длина волны зависит от импульса',
      category: FormulaCategory.physics,
      subcategory: 'Квантовая физика',
      examples: [
        FormulaExample(
          problem: 'Найти λ электрона (m = 9.1·10⁻³¹ кг) со скоростью 10⁶ м/с',
          given: 'm = 9.1·10⁻³¹, v = 10⁶, h = 6.63·10⁻³⁴',
          solution: 'Шаг 1: λ = h/(mv)\n\nШаг 2: λ = 6.63·10⁻³⁴/(9.1·10⁻³¹·10⁶)\n\nШаг 3: λ = 6.63·10⁻³⁴/(9.1·10⁻²⁵)\n  = 7.29·10⁻¹⁰ м ≈ 0.73 нм',
          answer: 'λ ≈ 0.73 нм',
        ),
        FormulaExample(
          problem: 'Найти скорость электрона, если λ = 1 нм',
          given: 'λ = 10⁻⁹ м',
          solution: 'Шаг 1: v = h/(mλ)\n\nШаг 2: v = 6.63·10⁻³⁴/(9.1·10⁻³¹·10⁻⁹)\n\nШаг 3: v = 6.63·10⁻³⁴/(9.1·10⁻⁴⁰)\n  ≈ 7.3·10⁵ м/с',
          answer: 'v ≈ 7.3·10⁵ м/с',
        ),
        FormulaExample(
          problem: 'Сравнить λ электрона и протона (m_p = 1836m_e) при одинаковой скорости',
          given: 'm_p = 1836m_e',
          solution: 'Шаг 1: λ ~ 1/m при v = const\n\nШаг 2: λ_e/λ_p = m_p/m_e\n\nШаг 3: = 1836/1 = 1836\n\nУ электрона в 1836 раз длиннее',
          answer: 'λ_электрона в 1836 раз больше',
        ),
      ],
    ),
  ];
}
