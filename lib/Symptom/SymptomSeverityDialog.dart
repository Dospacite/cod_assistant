import 'package:cod_assistant/Symptom/SeveritySelection.dart';
import 'package:flutter/material.dart';

import 'Symptom.dart';

class SymptomSeverityDialog extends StatelessWidget {
  final Symptom symptom;
  const SymptomSeverityDialog({required this.symptom, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        child: Column(
          children: [
            const Text("Semptom Şiddeti"),
            SeveritySelection(
              symptom: symptom,
            ),
          ],
        ),
      ),
    );
  }
}
