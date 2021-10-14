import 'Ingredient.dart';
class Recipe {
  String label ;
  String Imageurl ;
  // TODO: Add servings and ingredients
  int servings;
  List<Ingredient> ingredients;
  Recipe(this.label, this.Imageurl,this.servings,this.ingredients);
// TODO; Add List<Recipe> here
  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/4.jpg',
      4,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),
    Recipe(
      'Tomato Soup',
      'assets/3.jpg',
      2,
      [
        Ingredient(1, 'can', 'Tomato Soup',),
      ],
    ),
    Recipe(
      'Grilled Cheese',
      'assets/2.jpg',
      1,
      [
        Ingredient(2, 'slices', 'Cheese',),
        Ingredient(2, 'slices', 'Bread',),
      ],
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/1.jpg',
      24,
      [
        Ingredient(4, 'cups', 'flour',),
        Ingredient(2, 'cups', 'sugar',),
        Ingredient(0.5, 'cups', 'chocolate chips',),
      ],
    ),
    Recipe(
      'Taco Salad',
      'assets/5.jpg',
      1,
      [
        Ingredient(4, 'oz', 'nachos',),
        Ingredient(3, 'oz', 'taco meat',),
        Ingredient(0.5, 'cup', 'cheese',),
        Ingredient(0.25, 'cup', 'chopped tomatoes',),
      ],
    ),
    Recipe(
      'Hawaiian Pizza test',
      'assets/8.jpg',
      4,
      [
        Ingredient(1, 'item', 'pizza',),
        Ingredient(1, 'cup', 'pineapple',),
        Ingredient(8, 'oz', 'ham',),
      ],
    ),
  ];


}

