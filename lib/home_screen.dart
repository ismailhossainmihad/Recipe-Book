import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_card.dart';
import 'add_edit_recipe_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      id: '1',
      title: 'Spaghetti Carbonara',
      description: 'A classic Italian pasta dish.',
      ingredients: [
        'Spaghetti',
        'Eggs',
        'Pancetta',
        'Parmesan cheese',
        'Pepper'
      ],
      steps: [
        'Boil pasta',
        'Fry pancetta',
        'Mix eggs and cheese',
        'Combine all'
      ],
    ),
    // Add more recipes here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (ctx, index) {
          return RecipeCard(recipe: recipes[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddEditRecipeScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
