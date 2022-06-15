// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntasAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> perguntas = [
      {
        'texto': 'Qual é sua cor favorita?',
        'respostas': ['Azul', 'Branco', 'Vermelho', 'Rosa'],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Cavalo', 'Cachorro', 'Gato', 'Coelho'],
      },
      {
        'texto': 'Qual é o seu Time favorito?',
        'respostas': [
          'Barcelona',
          'Liverpool',
          'Real Madrid',
          'Mancester City'
        ],
      },
    ];
    List<Widget> respotas = [];

    for (var textoResp in perguntas[_perguntaSelecionada]['respostas']) {
      respotas.add(Resposta(textoResp, _responder));
    }

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Perguntas'),
            ),
            body: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Questao(perguntas[_perguntaSelecionada]['texto'] as String?),
                ...respotas,
              ],
            )));
  }
}

// ignore: use_key_in_widget_constructors
class PerguntaApp extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
