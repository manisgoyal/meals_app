import 'package:flutter/material.dart';
import 'package:meals_app/category_meals_screen.dart';
import './categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delhi Eats',
      theme: ThemeData(
        primaryColorLight: const Color(0xff922D50),
        primaryColor: const Color(0xff3c1b43),
        primaryColorDark: const Color(0xff501537),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xff922D50),
          secondary: const Color(0xFFD4E79E),
          background: const Color(0xff501537),
          primaryContainer: const Color(0xff3c1b43),
          secondaryContainer: const Color(0xffb8c480),
          surface: const Color(0xff501537),
        ),
        canvasColor: const Color(0xff503854),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: const TextStyle(
              color: Color(0xff211f21),
            ),
            bodyText2: const TextStyle(
              color: Color(0xff211f21),
            ),
            headline6: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'RobotoCondensed',
            )),
      ),
      home: CategoriesScreen(),
      routes: {
        '/category-meals': ((context) => CategoryMealsScreen()),
      },
    );
  }
}
