import 'package:cod_assistant/MaleSelection/MaleSelectionScreen.dart';
import 'package:cod_assistant/SymptomAddDrop/SymptomAddDrop.dart';
import 'package:flutter/material.dart';

import '../FemaleSelection/FemaleSelectionScreen.dart';
import '../GlobalData.dart';

class SymptomAddDropScreen extends StatelessWidget {
  const SymptomAddDropScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              padding: const EdgeInsets.all(10),
              child: Text(
                "Chosen Symptoms",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).backgroundColor,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.92,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black54,
                  width: 2,
                ),
              ),
              child: const SingleChildScrollView(
                padding: EdgeInsets.all(5),
                child: SymptomAddDrop(),
              ),
            ),
            Divider(
              color: Colors.black87,
              height: MediaQuery.of(context).size.height * 0.05,
              thickness: 2,
              indent: 30,
              endIndent: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10),
                backgroundColor: Colors.white,
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GlobalData.selectedGender == "male"
                      ? const MaleSelectionScreen()
                      : const FemaleSelectionScreen(),
                ),
              ),
              child: Icon(
                Icons.add,
                size: 50,
                color: Theme.of(context).backgroundColor,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/result'),
                  child: const Text(
                    "FINISH",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
