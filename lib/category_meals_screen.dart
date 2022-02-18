import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categorie-meals';
  // final String categoryId;
  // final String categoryTitle;

  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final String categoryTitle = routeArgs['title'] as String;
    final String categoryId = routeArgs['id'] as String;

    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
      body: const Center(
        child: Text("The Recipes for the Category!"),
      ),
    );
  }
}
