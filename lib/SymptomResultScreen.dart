import 'package:cod_assistant/MaleSelection.dart';
import 'package:flutter/material.dart';

import 'GlobalData.dart';
import 'Symptom.dart';

class SymptomResultScreen extends StatefulWidget {
  const SymptomResultScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SymptomResultScreenState();
  }
}

class SymptomResultScreenState extends State<SymptomResultScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("CODAssistant"),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Karşınızdaki kişi işitme engelli ve aşağıdaki semptomlara sahip:\n ${GlobalData.symptoms.join("\n")}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
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
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MaleSelection(),
                      ),
                    ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
