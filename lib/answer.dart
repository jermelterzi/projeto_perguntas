import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.text, this.onSelect, {Key? key}) : super(key: key);

  final String text;
  final void Function() onSelect;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSelect,
        child: Text(text),
      ),
    );
  }
}
