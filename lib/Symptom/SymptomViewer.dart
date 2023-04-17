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
        backgroundColor: Theme.of(context).backgroundColor,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "CHOOSE THE SYMPTOM",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.86,
                width: MediaQuery.of(context).size.width * 0.95,
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  padding: const EdgeInsets.all(20),
                  children: [
                    for (Symptom symptom in symptoms)
                      symptom.getWidget(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
