import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          'Temporariamente indisponível para este tamanho de tela!\nJá estamos trabalho nisso :)',
          style: TextStyle(fontSize: 20, color: light)),
    );
  }
}
