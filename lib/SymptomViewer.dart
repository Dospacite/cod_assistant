import 'package:flutter/material.dart';

import 'Symptom.dart';

class SymptomViewer {
  List<Symptom> symptoms;

  SymptomViewer({
    required this.symptoms,
  });

  Widget getWidget(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("CODAssistant"),
        ),
        body: Center(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            padding: const EdgeInsets.all(20),
            children: [
              for (Symptom symptom in symptoms) symptom.getWidget(context),
            ],
          ),
        ),
      ),
    );
  }
}
