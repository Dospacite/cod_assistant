import 'package:flutter/material.dart';

import '../GlobalData.dart';
import '../Symptom/Symptom.dart';

class SymptomAddDrop extends StatefulWidget {
  const SymptomAddDrop({Key? key}) : super(key: key);

  @override
  State<SymptomAddDrop> createState() => _SymptomAddDropState();
}

class _SymptomAddDropState extends State<SymptomAddDrop> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10,
      children: [
        for (Symptom symptom in GlobalData.symptoms)
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Theme.of(context).backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(1.5, 1.5), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: symptom.getRowWidget(context),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                ElevatedButton(
                  onPressed: () {
                    GlobalData.symptoms.remove(symptom);
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.black,
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
