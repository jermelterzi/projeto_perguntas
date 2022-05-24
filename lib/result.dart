import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this.points, this.onRestart, {Key? key}) : super(key: key);

  final int points;
  final Function() onRestart;

  String get congratulations {
    if (points < 8) {
      return 'Desculpe, você reprovou! Sua pontuação é $points.';
    } else if (points < 12) {
      return 'Parabéns, você passou! Sua pontuação é $points.';
    } else if (points < 16) {
      return 'Mandou bem! Sua pontuação é $points.';
    } else {
      return 'Que isso, hein?! Sua pontuação é $points.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            congratulations,
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          onPressed: onRestart,
          child: const Text('Reiniciar?'),
        )
      ],
    );
  }
}
