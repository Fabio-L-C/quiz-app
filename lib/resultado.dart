import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Incrivel!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        TextButton(
          child: const Text(
            'Reiniciar?',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),
          ),
          onPressed: quandoReiniciarQuestionario,
        ),
      ],
    );
  }
}
