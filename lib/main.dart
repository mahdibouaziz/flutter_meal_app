import 'package:flutter/material.dart';
import 'package:flutter_meal_app/screens/categories_screen.dart';
import 'package:flutter_meal_app/screens/category_meals_screen.dart';

void main() {
  runApp(MaterialApp(
    title: "Meal App",
    initialRoute: '/', // the default one is '/'
    routes: {
      '/': (ctx)=> const CategoriesScreen(),
      CategoryMealsScreen.routeName: (ctx) => const CategoryMealsScreen()
    } ,

    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
          .copyWith(secondary: Colors.amber),
      canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      fontFamily: 'Raleway',
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold),
      ),
    ),
  ));
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("DeliMeals"),
//       ),
//       body: const Center(
//         child: Text("Navigations time"),
//       ),
//     );
//   }
// }
