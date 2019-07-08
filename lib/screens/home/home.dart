import 'package:flutter/material.dart';
import './widgets/homecard.dart';
import '../detalhes/detalhes.dart';
import '../../widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(),
        body: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetalhesScreen()));
          },
          child: HomeCardWidget(),
        ));
  }
}
