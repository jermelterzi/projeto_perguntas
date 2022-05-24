import 'package:flutter/material.dart';
import 'package:projeto_perguntas/answer.dart';
import './question.dart';

main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  final List<Map<String, Object>> questions = [
    {
      'text': 'Qual é a sua cor favorita?',
      'aswers': [
        'Verde',
        'Azul',
        'Vermelho',
        'Branco',
      ],
    },
    {
      'text': 'Qual é a seu animal favorito?',
      'aswers': [
        'Papagaio',
        'Elefante',
        'Lagarto',
        'Avestruz',
      ],
    },
    {
      'text': 'Qual é o seu instrutor favorito?',
      'aswers': [
        'João',
        'Léo',
        'Maria',
        'Lucas',
      ],
    },
  ];

  var _questionSelect = 0;

  void _reply() {
    setState(() {
      _questionSelect++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> aswers = questions[_questionSelect].cast()['aswers'];

    // for(String aswerText in ) {
    //   aswers.add(Answer(aswerText, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Question(questions[_questionSelect]['text'].toString()),
            ...aswers.map((t) => Answer(t, _reply)).toList(),
          ],
        ),
      ),
    );
  }
}
