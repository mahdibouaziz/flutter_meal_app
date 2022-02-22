import 'package:flutter/material.dart';
import 'package:flutter_meal_app/models/Meal.dart';
import 'package:flutter_meal_app/widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoritesMeals;

  const FavoritesScreen({required this.favoritesMeals, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favoritesMeals.isEmpty) {
      return Center(
        child: Text(" You have no favorites yes - start adding some!"),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            affordability: favoritesMeals[index].affordability,
            complexity: favoritesMeals[index].complexity,
            duration: favoritesMeals[index].duration,
            imageUrl: favoritesMeals[index].imageUrl,
            title: favoritesMeals[index].title,
            id: favoritesMeals[index].id,
          );
        },
        itemCount: favoritesMeals.length,
      );
    }
  }
}
