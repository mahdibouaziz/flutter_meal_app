import 'package:flutter/material.dart';
import 'package:flutter_meal_app/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(
      {required this.id, required this.title, required this.color, Key? key})
      : super(key: key);

  void selectCategory(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => CategoryMealsScreen(
              categoryId: id,
              categoryTitle: title,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(
        context,
      ),
      splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
