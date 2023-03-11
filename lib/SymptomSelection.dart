import 'package:cod_assistant/SymptomResultScreen.dart';
import 'package:flutter/material.dart';

import 'GlobalData.dart';
import 'Symptom.dart';

class SymptomSelection extends StatelessWidget {
  final Symptom symptom;
  final double top;
  final double left;
  final double width;
  final double height;

  const SymptomSelection(
      {Key? key,
      required this.symptom,
      required this.top,
      required this.left,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      width: width,
      height: height,
      child: InkResponse(
        onTap: () => {
          GlobalData.symptoms.add(symptom),
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SymptomResultScreen(),
            ),
          ),
        },
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(width: 0.5, color: Colors.white),
              left: BorderSide(width: 0.5, color: Colors.white),
              right: BorderSide(width: 0.5, color: Colors.white),
              bottom: BorderSide(width: 0.5, color: Colors.white),
            ),
          ),
          child: const Icon(
            Icons.ads_click_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
