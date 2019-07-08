import 'package:flutter/material.dart';
import './widgets/receita.dart';
import '../../widgets/appbar.dart';

class DetalhesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(),body: ReceitaWidget());
  }
}
