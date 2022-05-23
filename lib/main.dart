import 'package:flutter/material.dart';

main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text('Olá Flutter!'),
    );
  }
}
