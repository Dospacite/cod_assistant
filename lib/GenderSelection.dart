import 'package:cod_assistant/GlobalData.dart';
import 'package:cod_assistant/MaleSelection/MaleSelectionScreen.dart';
import 'package:cod_assistant/FemaleSelection/FemaleSelectionScreen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class GenderSelection extends StatelessWidget {
  const GenderSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: Material(
                  child: InkResponse(
                    containedInkWell: true,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FemaleSelectionScreen(),
                        ),
                      );
                      GlobalData.selectedGender = "female";
                      Hive.box('profile').put('gender', 'female');
                    },
                    child: Ink.image(
                      image:
                          const AssetImage("assets/images/female_symbol.png"),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 300,
                width: 300,
                child: Material(
                  child: InkResponse(
                    containedInkWell: true,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MaleSelectionScreen(),
                        ),
                      );
                      GlobalData.selectedGender = "male";
                      Hive.box('profile').put('gender', 'male');
                    },
                    child: Ink.image(
                      image: const AssetImage("assets/images/male_symbol.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
