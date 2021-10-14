import 'package:flutter/material.dart';
import 'package:recipes/models/Recipe.dart';
Widget buildRecipeCard(Recipe recipe) {
  return Card(
    // 1
    elevation: 20.0,
    // 2
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0)),
    // 3
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      // 4
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.Imageurl)),
          // 5
          const SizedBox(
            height: 14.0,
          ),
          // 6
          Text(
            recipe.label,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          )
        ],

      ),
    ),
  );
}