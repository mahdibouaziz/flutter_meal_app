import 'package:flutter/material.dart';
import 'package:flutter_meal_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = "/filters";
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool gluteenFree = false;
  bool vegetarian = false;
  bool vegan = false;
  bool lactoseFree = false;

  Widget buildSwitchListTile(String title, String description,
      bool currentValue, Function(bool)? updateValue) {
    return SwitchListTile(
      activeColor: Theme.of(context).colorScheme.secondary,
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filters')),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              buildSwitchListTile(
                  "Gluten-free", "Only Include gluten-free meals", gluteenFree,
                  (newValue) {
                setState(() {
                  gluteenFree = newValue;
                });
              }),
              buildSwitchListTile(
                  "lactoseFree", "Only Include lactoseFree meals", lactoseFree,
                  (newValue) {
                setState(() {
                  lactoseFree = newValue;
                });
              }),
              buildSwitchListTile(
                  "Vegetarian", "Only Include vegetarian meals", vegetarian,
                  (newValue) {
                setState(() {
                  vegetarian = newValue;
                });
              }),
              buildSwitchListTile("Vegan", "Only Include vegan meals", vegan,
                  (newValue) {
                setState(() {
                  vegan = newValue;
                });
              }),
            ],
          ))
        ],
      ),
    );
  }
}
