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
          _buildRecipeText('1 lata de milho verde com água e tudo; 1/2 lata da mesma de óleo; 1 lata da mesma de açúcar; 1/2 lata da mesma de fubá; 4 ovos; 2 colheres bem cheias de farinha de trigo; 2 colheres de coco ralado; 1 colher e 1/2 de chá bem cheia de fermento em pó'),
          _buildRecipeSubtitle('Modo de preparo'),
          _buildRecipeText('Bata bastante todos os ingredientes no liquidificador, depois bem batido acrescente o coco ralado e o fermento e misture, coloque para assar. Pode colocar na forma redonda de buraco e na quadrada, a forma deverá ser untada e enfarinhada. O tempo de preparo na redonda é mais rápido, mas a receita fica menor, para aumentar faça 2 vezes. O bolo fica parecendo pamonha, bem cremoso, fica uma delicia! Leve ao forno preaquecido a 180ºC por, aproximadamente, 40 minutos.')
        ]));
  }
}