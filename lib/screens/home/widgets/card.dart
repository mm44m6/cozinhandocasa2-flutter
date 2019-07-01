import 'package:flutter/material.dart';

class HomeCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildCard(context);
  }

  Widget _cardImage() {
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        child: Image.network(
          'http://www.radio88fm.com/conteudo/receitas/101215_084307.jpg',
          fit: BoxFit.fill,
          height: 238,
        ));
  }

  Widget _cardImageGradient() {
    return Container(
      height: 238,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.deepOrange.withOpacity(0.7)
              ])),
    );
  }

  Widget _cardTitle() {
    return const Positioned(
        left: 10.0,
        bottom: 10.0,
        child: Text(
          'Bolo de milho',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ));
  }

  Widget _buildCard(context) => SizedBox(
        height: 270,
        child: Card(
          margin: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Stack(children: <Widget>[
                _cardImage(),
                _cardImageGradient(),
                _cardTitle()
              ]),
            ],
          ),
        ),
      );
}
