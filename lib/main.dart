import 'package:flutter/material.dart';
import 'package:projeto_perguntas/quiz.dart';
import './result.dart';

main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  final List<Map<String, Object>> _questions = const [
    {
      'text': 'Qual é a sua cor favorita?',
      'answers': [
        'Verde',
        'Azul',
        'Vermelho',
        'Branco',
      ],
    },
    {
      'text': 'Qual é a seu animal favorito?',
      'answers': [
        'Papagaio',
        'Elefante',
        'Lagarto',
        'Avestruz',
      ],
    },
    {
      'text': 'Qual é o seu instrutor favorito?',
      'answers': [
        'João',
        'Léo',
        'Maria',
        'Lucas',
      ],
    },
  ];

  var _questionSelect = 0;

  void _reply() {
    if (hasQuestion) {
      setState(() {
        _questionSelect++;
      });
    }
  }

  bool get hasQuestion {
    return _questionSelect < _questions.length;
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: hasQuestion
            ? Quiz(
                questions: _questions,
                questionSelect: _questionSelect,
                reply: _reply,
              )
            : const Result('Parabéns!'),
      ),
    );
  }
}
