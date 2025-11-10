import 'package:hive/hive.dart';

part 'favorite_formula.g.dart';

@HiveType(typeId: 3)
class FavoriteFormula extends HiveObject {
  @HiveField(0)
  String formulaId;

  @HiveField(1)
  DateTime addedAt;

  FavoriteFormula({
    required this.formulaId,
    required this.addedAt,
  });
}

