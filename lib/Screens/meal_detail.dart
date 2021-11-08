import 'package:flutter/material.dart';

class MealDetailSCreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final mealID = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('$mealID'),
      ),
      body: const Center(
        child: Text('Details fot the meal'),
      ),
    );
  }
}
