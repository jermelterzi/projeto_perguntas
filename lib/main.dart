import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  PerguntaApp({Key? key}) : super(key: key);

  final perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é a seu animal favorito?'
  ];

  void responder() {
    print('Resposta 1 escolhida!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Resposta 2 escolhida!');
              },
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: () => print('Resposta 3 escolhida!'),
              child: const Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}
