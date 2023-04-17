import 'package:flutter/material.dart';

class HelpText extends StatelessWidget {
  final String text;
  const HelpText({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
