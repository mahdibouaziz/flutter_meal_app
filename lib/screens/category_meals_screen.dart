import 'package:flutter/material.dart';
import 'package:flutter_meal_app/dummy_data.dart';
import 'package:flutter_meal_app/models/Meal.dart';
import 'package:flutter_meal_app/widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/categorie-meals';
  // final String categoryId;
  // final String categoryTitle;

  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle = "";
  List<Meal> displayedMeals = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    categoryTitle = routeArgs['title'] as String;
    final String categoryId = routeArgs['id'] as String;
    displayedMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
  }

  void removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(categoryTitle)),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              affordability: displayedMeals[index].affordability,
              complexity: displayedMeals[index].complexity,
              duration: displayedMeals[index].duration,
              imageUrl: displayedMeals[index].imageUrl,
              title: displayedMeals[index].title,
              id: displayedMeals[index].id,
              removeItem: removeMeal,
            );
          },
          itemCount: displayedMeals.length,
        ));
  }
}
