import 'package:flutter/material.dart';
import 'package:flutter_meal_app/categories_screen.dart';

void main() {
  runApp(MaterialApp(
    title: "Meal App",
    home: const CategoriesScreen(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
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
