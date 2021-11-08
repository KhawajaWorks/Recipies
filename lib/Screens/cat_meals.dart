import 'package:flutter/material.dart';
import 'package:meals/Models/meal.dart';
import 'package:meals/widgets/meals_item.dart';

import '../Data/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categorymeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: categorymeals[index].id,
              title: categorymeals[index].title,
              affordability: categorymeals[index].affordability,
              complexity: categorymeals[index].complexity,
              duration: categorymeals[index].duration,
              imageUrl: categorymeals[index].imageUrl,
            );
          },
          itemCount: categorymeals.length,
        ));
  }
}
