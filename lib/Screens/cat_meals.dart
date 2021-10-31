import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tile'),
      ),
      body: const Center(
        child: Text('The Recipes for the Category'),
      ),
    );
  }
}
