import 'package:cod_assistant/Welcome/VerticalText.dart';
import 'package:flutter/material.dart';

class CODAssistantLogo extends StatelessWidget {
  const CODAssistantLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text(
          "CODA",
          style: TextStyle(
            fontSize: 90,
            letterSpacing: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(right: 30),
          child: const VerticalText(
            text: "SSISTANT",
          ),
        ),
      ],
    );
  }
}
