// Part 1: Mathematics Formulas - Trigonometry, Logarithms, Algebra
import '../models/formula.dart';
import '../models/formula_example.dart';

class FormulasDataPart1 {
  static final List<Formula> formulas = [
    // ТРИГОНОМЕТРИЯ - ОСНОВЫ
    Formula(
      id: 'm_trig_01',
      title: 'Синус угла',
      latex: r'\sin\alpha = \frac{\text{противолежащий катет}}{\text{гипотенуза}}',
      description: 'Синус острого угла в прямоугольном треугольнике',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Основы',
      examples: [
        FormulaExample(
          problem: 'Найти sin α в треугольнике с катетами 3 и 4',
          given: 'Противолежащий катет = 3, гипотенуза c = 5',
          solution: 'sin α = 3/5 = 0.6',
          answer: 'sin α = 0.6',
        ),
        FormulaExample(
          problem: 'Найти катет, если гипотенуза 10 см и sin α = 0.6',
          given: 'c = 10 см, sin α = 0.6',
          solution: 'Противолежащий катет = 10 · 0.6 = 6 см',
          answer: '6 см',
        ),
      ],
    ),
    
    Formula(
      id: 'm_trig_02',
      title: 'Косинус угла',
      latex: r'\cos\alpha = \frac{\text{прилежащий катет}}{\text{гипотенуза}}',
      description: 'Косинус острого угла в прямоугольном треугольнике',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Основы',
      examples: [
        FormulaExample(
          problem: 'Найти cos α, если sin α = 0.6',
          given: 'sin α = 0.6',
          solution: 'cos²α = 1 - 0.36 = 0.64\ncos α = 0.8',
          answer: 'cos α = 0.8',
        ),
        FormulaExample(
          problem: 'Найти cos α в треугольнике с катетами 5 и 12',
          given: 'Прилежащий катет = 5, гипотенуза = 13',
          solution: 'cos α = 5/13 ≈ 0.385',
          answer: 'cos α ≈ 0.385',
        ),
      ],
    ),
    
    Formula(
      id: 'm_trig_03',
      title: 'Тангенс угла',
      latex: r'\tan\alpha = \frac{\sin\alpha}{\cos\alpha} = \frac{\text{противолежащий}}{\text{прилежащий}}',
      description: 'Тангенс через синус и косинус, или отношение катетов',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Основы',
      examples: [
        FormulaExample(
          problem: 'Найти tg α, если sin α = 3/5 и cos α = 4/5',
          given: 'sin α = 3/5, cos α = 4/5',
          solution: 'tg α = (3/5) / (4/5) = 3/4 = 0.75',
          answer: 'tg α = 0.75',
        ),
        FormulaExample(
          problem: 'Найти tg 45°',
          given: 'α = 45°, sin 45° = cos 45° = √2/2',
          solution: 'tg 45° = (√2/2) / (√2/2) = 1',
          answer: 'tg 45° = 1',
        ),
      ],
    ),
    
    Formula(
      id: 'm_trig_04',
      title: 'Котангенс угла',
      latex: r'\cot\alpha = \frac{\cos\alpha}{\sin\alpha} = \frac{1}{\tan\alpha}',
      description: 'Котангенс - обратная функция к тангенсу',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Основы',
      examples: [
        FormulaExample(
          problem: 'Найти ctg α, если tg α = 2',
          given: 'tg α = 2',
          solution: 'ctg α = 1 / 2 = 0.5',
          answer: 'ctg α = 0.5',
        ),
        FormulaExample(
          problem: 'Найти ctg 30°',
          given: 'sin 30° = 1/2, cos 30° = √3/2',
          solution: 'ctg 30° = (√3/2) / (1/2) = √3',
          answer: 'ctg 30° = √3',
        ),
      ],
    ),
    
    // ТРИГОНОМЕТРИЯ - ТОЖДЕСТВА
    Formula(
      id: 'm_trig_05',
      title: 'Основное тригонометрическое тождество',
      latex: r'\sin^2\alpha + \cos^2\alpha = 1',
      description: 'Фундаментальное соотношение между синусом и косинусом',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Тождества',
      examples: [
        FormulaExample(
          problem: 'Найти cos α, если sin α = 0.6',
          given: 'sin α = 0.6',
          solution: 'cos²α = 1 - 0.36 = 0.64\ncos α = ±0.8',
          answer: 'cos α = ±0.8',
        ),
        FormulaExample(
          problem: 'Найти sin α, если cos α = 12/13',
          given: 'cos α = 12/13',
          solution: 'sin²α = 1 - 144/169 = 25/169\nsin α = 5/13',
          answer: 'sin α = 5/13',
        ),
      ],
    ),
    
    Formula(
      id: 'm_trig_06',
      title: 'Тождество с тангенсом',
      latex: r'1 + \tan^2\alpha = \frac{1}{\cos^2\alpha}',
      description: 'Связь тангенса и косинуса',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Тождества',
      examples: [
        FormulaExample(
          problem: 'Найти cos α, если tg α = 3/4',
          given: 'tg α = 3/4',
          solution: '1 + 9/16 = 1/cos²α\n25/16 = 1/cos²α\ncos²α = 16/25\ncos α = 4/5',
          answer: 'cos α = 4/5',
        ),
      ],
    ),
    
    Formula(
      id: 'm_trig_07',
      title: 'Синус суммы',
      latex: r'\sin(\alpha + \beta) = \sin\alpha\cos\beta + \cos\alpha\sin\beta',
      description: 'Формула синуса суммы двух углов',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Тождества',
      examples: [
        FormulaExample(
          problem: 'Вычислить sin 75°',
          given: '75° = 45° + 30°',
          solution: 'sin 75° = sin 45° cos 30° + cos 45° sin 30°\n= (√2/2)(√3/2) + (√2/2)(1/2)\n= (√6 + √2)/4',
          answer: 'sin 75° = (√6 + √2)/4',
        ),
      ],
    ),
    
    Formula(
      id: 'm_trig_08',
      title: 'Синус разности',
      latex: r'\sin(\alpha - \beta) = \sin\alpha\cos\beta - \cos\alpha\sin\beta',
      description: 'Формула синуса разности двух углов',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Тождества',
      examples: [
        FormulaExample(
          problem: 'Вычислить sin 15°',
          given: '15° = 45° - 30°',
          solution: 'sin 15° = sin 45° cos 30° - cos 45° sin 30°\n= (√2/2)(√3/2) - (√2/2)(1/2)\n= (√6 - √2)/4',
          answer: 'sin 15° = (√6 - √2)/4',
        ),
      ],
    ),
    
    Formula(
      id: 'm_trig_09',
      title: 'Косинус суммы',
      latex: r'\cos(\alpha + \beta) = \cos\alpha\cos\beta - \sin\alpha\sin\beta',
      description: 'Формула косинуса суммы двух углов',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Тождества',
      examples: [
        FormulaExample(
          problem: 'Вычислить cos 75°',
          given: '75° = 45° + 30°',
          solution: 'cos 75° = cos 45° cos 30° - sin 45° sin 30°\n= (√2/2)(√3/2) - (√2/2)(1/2)\n= (√6 - √2)/4',
          answer: 'cos 75° = (√6 - √2)/4',
        ),
      ],
    ),
    
    Formula(
      id: 'm_trig_10',
      title: 'Косинус разности',
      latex: r'\cos(\alpha - \beta) = \cos\alpha\cos\beta + \sin\alpha\sin\beta',
      description: 'Формула косинуса разности двух углов',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Тождества',
      examples: [
        FormulaExample(
          problem: 'Вычислить cos 15°',
          given: '15° = 45° - 30°',
          solution: 'cos 15° = cos 45° cos 30° + sin 45° sin 30°\n= (√2/2)(√3/2) + (√2/2)(1/2)\n= (√6 + √2)/4',
          answer: 'cos 15° = (√6 + √2)/4',
        ),
      ],
    ),
    
    Formula(
      id: 'm_trig_11',
      title: 'Синус двойного угла',
      latex: r'\sin(2\alpha) = 2\sin\alpha\cos\alpha',
      description: 'Формула синуса двойного угла',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Тождества',
      examples: [
        FormulaExample(
          problem: 'Найти sin 2α, если sin α = 3/5 и cos α = 4/5',
          given: 'sin α = 3/5, cos α = 4/5',
          solution: 'sin 2α = 2 · (3/5) · (4/5) = 24/25',
          answer: 'sin 2α = 24/25',
        ),
        FormulaExample(
          problem: 'Вычислить sin 60°',
          given: 'sin 30° = 1/2, cos 30° = √3/2',
          solution: 'sin 60° = 2 · (1/2) · (√3/2) = √3/2',
          answer: 'sin 60° = √3/2',
        ),
      ],
    ),
    
    Formula(
      id: 'm_trig_12',
      title: 'Косинус двойного угла',
      latex: r'\cos(2\alpha) = \cos^2\alpha - \sin^2\alpha = 2\cos^2\alpha - 1 = 1 - 2\sin^2\alpha',
      description: 'Формула косинуса двойного угла (три варианта)',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Тождества',
      examples: [
        FormulaExample(
          problem: 'Найти cos 2α, если cos α = 0.6',
          given: 'cos α = 0.6',
          solution: 'cos 2α = 2 · 0.36 - 1 = 0.72 - 1 = -0.28',
          answer: 'cos 2α = -0.28',
        ),
        FormulaExample(
          problem: 'Найти cos 2α, если sin α = 0.8',
          given: 'sin α = 0.8',
          solution: 'cos 2α = 1 - 2 · 0.64 = 1 - 1.28 = -0.28',
          answer: 'cos 2α = -0.28',
        ),
      ],
    ),
    
    Formula(
      id: 'm_trig_13',
      title: 'Тангенс двойного угла',
      latex: r'\tan(2\alpha) = \frac{2\tan\alpha}{1 - \tan^2\alpha}',
      description: 'Формула тангенса двойного угла',
      category: FormulaCategory.mathematics,
      subcategory: 'Тригонометрия: Тождества',
      examples: [
        FormulaExample(
          problem: 'Найти tg 2α, если tg α = 2',
          given: 'tg α = 2',
          solution: 'tg 2α = 2·2 / (1 - 4) = 4 / (-3) = -4/3',
          answer: 'tg 2α = -4/3',
        ),
      ],
    ),
  ];
}
