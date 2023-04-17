import 'package:flutter/material.dart';

class HelpStep extends StatelessWidget {
  final int step;
  final int maxSteps;
  const HelpStep({required this.step, this.maxSteps = 3, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: 5,
        bottom: 5,
      ),
      child: Text(
        "STEP $step/$maxSteps",
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
