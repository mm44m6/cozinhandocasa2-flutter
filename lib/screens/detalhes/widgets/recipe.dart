import 'package:flutter/material.dart';

class RecipeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildRecipe();
  }

  Widget _buildRecipeTitle(String title) {
    return Text(title,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold
        ));
  }

  Widget _buildRecipeSubtitle(String subtitle) {
    return Text(subtitle,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, height: 2
        ));
  }

  Widget _buildRecipeText(String text) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Text(text,
            style: TextStyle()
        ));
  }

  Widget _buildRecipeIconRow() {
    return Row(children: <Widget>[
      Expanded(
          child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Icon(Icons.timer, color: Colors.deepOrange),
                  Text('55min', style: TextStyle(color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),)
                ],
              ))),
      Expanded(
          child: Column(
            children: <Widget>[
              Icon(Icons.restaurant, color: Colors.deepOrange),
              Text('6 - 7 porções', style: TextStyle(color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  fontSize: 12))
            ],
          ))
    ]);
  }

  Widget _buildRecipeImage(String image) {
    return Row(children: <Widget>[
      Expanded(
          child: Image.network(
              image,
              fit: BoxFit.fill,
              height: 300))
    ]);
  }

  Widget _buildRecipe() {
    return Container(
        child: Column(children: <Widget>[
          _buildRecipeImage('http://www.radio88fm.com/conteudo/receitas/101215_084307.jpg'),
          _buildRecipeIconRow(),
          _buildRecipeTitle('Bolo de Milho'),
          _buildRecipeSubtitle('Ingredientes'),
          _buildRecipeText(''),
          _buildRecipeSubtitle('Modo de preparo'),
          _buildRecipeText('')
        ]));
  }
}