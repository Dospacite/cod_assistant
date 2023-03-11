import 'package:cod_assistant/SymptomResultScreen.dart';
import 'package:flutter/material.dart';

import 'Audio.dart';
import 'GlobalData.dart';

class Symptom {
  ImageProvider image;
  String name;
  String? emoji;
  String description;
  Audio audio;

  Symptom(
      {required this.image,
      required this.name,
      this.emoji,
      required this.description,
      required this.audio});

  @override
  String toString() {
    return name;
  }

  Widget getWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: InkResponse(
        onTap: () => {
          GlobalData.symptoms.add(this),
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SymptomResultScreen(),
            ),
          ),
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: image,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(height: 10),
            FittedBox(
              fit: BoxFit.fitHeight,
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
