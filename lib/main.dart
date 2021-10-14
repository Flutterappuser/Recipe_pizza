import 'package:flutter/material.dart';
import 'package:recipes/layout/Recipe_detail.dart';
import 'package:recipes/component/buildCard.dart';

import 'package:recipes/models/Recipe.dart';

void main() {
  runApp(Recipes());
}

class Recipes extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 2
    final ThemeData theme = ThemeData();
    // 3
    return MaterialApp(
      // 4
      title: 'Recipe-Calculator',
      // 5
      theme: theme.copyWith(
        primaryColor: Colors.grey,

        colorScheme: theme.colorScheme.copyWith(

          secondary: Colors.black,
        ),
      ),
      // 6
      home:  MyHomePage(title: 'Recipe Calculator'),


    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: SafeArea(

        child: ListView.builder(
         itemCount: Recipe.samples.length,
         itemBuilder: (BuildContext context, int index)
          {
         return GestureDetector(
             onTap:(){
               Navigator.push(context, MaterialPageRoute(builder: (context){
                  return  RecipeDetail(recipe: Recipe.samples[index]);
                },),
               );
             },


             child: buildRecipeCard(Recipe.samples[index]));


          },

          ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

