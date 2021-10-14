import 'package:flutter/material.dart';
import 'package:recipes/models/Recipe.dart';


class RecipeDetail extends StatefulWidget {
  Recipe recipe ;
  RecipeDetail({required this.recipe,
    Key ? key
}) : super (key: key);
  @override
  _RecipeDetailState createState(){
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  // TODO: Add _sliderVal here
  int _sliderVal = 1;


  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.Imageurl),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
            ),
            // TODO: Add Expanded
            // 7
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  // 9
                  // TODO: Add ingredient.quantity
                  return Text('${ingredient.quantity * _sliderVal} '
                      '${ingredient.measure} '
                      '${ingredient.name}');


                },
              ),
            ),

            // TODO: Add Slider() here
            Slider(
              // 10
              min: 1,
              max: 10,
              divisions: 10,
              // 11
              label: '${_sliderVal * widget.recipe.servings} servings',
              // 12
              value: _sliderVal.toDouble(),
              // 13
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              // 14
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),

          ],
        ),
      ),
    );
  }
}

// TODO: Add _RecipeDetailState here