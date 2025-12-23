import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/favorite_formula.dart';

class FavoritesProvider extends ChangeNotifier {
  late Box<FavoriteFormula> _favoritesBox;
  List<String> _favoriteIds = [];

  FavoritesProvider() {
    _favoritesBox = Hive.box<FavoriteFormula>('favorites');
    _loadFavorites();
  }

  List<String> get favoriteIds => _favoriteIds;

  void _loadFavorites() {
    _favoriteIds = _favoritesBox.values.map((f) => f.formulaId).toList();
    notifyListeners();
  }

  bool isFavorite(String formulaId) {
    return _favoriteIds.contains(formulaId);
  }

  Future<void> toggleFavorite(String formulaId) async {
    if (isFavorite(formulaId)) {
      // Remove from favorites
      final key = _favoritesBox.values
          .firstWhere((f) => f.formulaId == formulaId)
          .key;
      await _favoritesBox.delete(key);
    } else {
      // Add to favorites
      final favorite = FavoriteFormula(
        formulaId: formulaId,
        addedAt: DateTime.now(),
      );
      await _favoritesBox.add(favorite);
    }
    _loadFavorites();
  }

  Future<void> clearAllFavorites() async {
    await _favoritesBox.clear();
    _loadFavorites();
  }
}

