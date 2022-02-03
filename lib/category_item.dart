import 'package:flutter/material.dart';

import 'category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color colour;
  const CategoryItem(this.id,this.title, this.colour);
  void selectCategory(ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return CategoryMealsScreen(id,title);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      // Added as inkwell needs material ancestor
      color: Colors.transparent, //Otherwise it provides a background Colour
      child: InkWell(
        splashColor: Theme.of(context).primaryColorLight.withOpacity(0.6),
        highlightColor: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(15),
        // Animation works but if not showing as flutter builrs next page faster
        onTap: () => selectCategory(context),
        // This also works, I tested for highlight colour
        // onLongPress: () {
        //   selectCategory(context);
        // },
        child: Ink(
          // If container is child then ink needed
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                colour.withOpacity(0.7),
                colour,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
      ),
    );
  }
}
