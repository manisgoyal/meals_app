import 'package:flutter/material.dart';
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
          primaryVariant: const Color(0xff3c1b43),
          secondaryVariant: const Color(0xffb8c480),
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
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delhi Eats'),
      ),
      body: const Center(
        child: Text('Navigation Time'),
      ),
    );
  }
}
