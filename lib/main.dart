import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'models/course.dart';
import 'models/homework.dart';
import 'models/favorite_formula.dart';
import 'providers/course_provider.dart';
import 'providers/homework_provider.dart';
import 'providers/favorites_provider.dart';
import 'screens/home_screen.dart';
import 'theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize date formatting for Russian
  await initializeDateFormatting('ru_RU', null);
  
  // Initialize Hive
  await Hive.initFlutter();
  
  // Register Adapters
  Hive.registerAdapter(CourseAdapter());
  Hive.registerAdapter(HomeworkAdapter());
  Hive.registerAdapter(WeekdayAdapter());
  Hive.registerAdapter(FavoriteFormulaAdapter());
  
  // Open Boxes
  await Hive.openBox<Course>('courses');
  await Hive.openBox<Homework>('homework');
  await Hive.openBox<FavoriteFormula>('favorites');
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CourseProvider()),
        ChangeNotifierProvider(create: (_) => HomeworkProvider()),
        ChangeNotifierProvider(create: (_) => FavoritesProvider()),
      ],
      child: MaterialApp(
        title: 'StudyMG',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        themeMode: ThemeMode.light,
        locale: const Locale('ru', 'RU'),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ru', 'RU'),
        ],
        home: const HomeScreen(),
      ),
    );
  }
}

