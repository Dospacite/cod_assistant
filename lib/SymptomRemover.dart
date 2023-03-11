import 'package:flutter/material.dart';

import 'GlobalData.dart';
import 'Symptom.dart';

class SymptomRemover extends StatefulWidget {
  const SymptomRemover({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SymptomRemoverState();
  }
}

class SymptomRemoverState extends State<SymptomRemover> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for (Symptom symptom in GlobalData.symptoms)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: symptom.getWidget(context),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  GlobalData.symptoms.remove(symptom);
                  setState(() {});
                },
                child: const Icon(Icons.remove),
              ),
            ],
          ),
      ],
    );
  }
}
