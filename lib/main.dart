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
        {
          'text': 'Azul',
          'points': 10,
        },
        {
          'text': 'Vermelho',
          'points': 5,
        },
        {
          'text': 'Branco',
          'points': 3,
        },
        {
          'text': 'Verde',
          'points': 1,
        },
      ],
    },
    {
      'text': 'Qual é a seu animal favorito?',
      'answers': [
        {
          'text': 'Papagaio',
          'points': 10,
        },
        {
          'text': 'Elefante',
          'points': 5,
        },
        {
          'text': 'Lagarto',
          'points': 3,
        },
        {
          'text': 'Avestruz',
          'points': 1,
        },
      ],
    },
    {
      'text': 'Qual é o seu instrutor favorito?',
      'answers': [
        {
          'text': 'João',
          'points': 10,
        },
        {
          'text': 'Léo',
          'points': 5,
        },
        {
          'text': 'Maria',
          'points': 3,
        },
        {
          'text': 'Lucas',
          'points': 1,
        },
      ],
    },
  ];

  var _questionSelect = 0;
  var _totalPoints = 0;

  void _reply(int points) {
    if (hasQuestion) {
      setState(() {
        _questionSelect++;
        _totalPoints += points;
      });
      print(_totalPoints);
    }
  }

  bool get hasQuestion {
    return _questionSelect < _questions.length;
  }

  void _restartQuiz() {
    setState(() {
      _questionSelect = 0;
      _totalPoints = 0;
    });
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
            : Result(_totalPoints, _restartQuiz),
      ),
    );
  }
}
