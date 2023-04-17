import 'package:cod_assistant/Selection.dart';
import 'package:flutter/material.dart';

import '../Symptom/Symptoms.dart';

class FemaleSelectionBack extends StatelessWidget {
  const FemaleSelectionBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              height: constraints.biggest.height * 1,
              child: const Image(
                image: AssetImage("assets/images/female_body_back.png"),
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              height: constraints.biggest.height * 0.1,
              left: constraints.biggest.width * 0.75,
              top: constraints.biggest.height * 0.06,
              child: const Image(
                image: AssetImage("assets/images/click.gif"),
                fit: BoxFit.fitHeight,
              ),
            ),
            Selection(
              // Back
              top: constraints.biggest.height * 0.31,
              left: constraints.biggest.width * 0.353,
              width: constraints.biggest.width * 0.29,
              height: constraints.biggest.height * 0.12,
              destination: Symptoms.back.getWidget(context),
            ),
            Selection(
              // Hip
              top: constraints.biggest.height * 0.43,
              left: constraints.biggest.width * 0.280,
              width: constraints.biggest.width * 0.44,
              height: constraints.biggest.height * 0.1,
              destination: Symptoms.hip.getWidget(context),
            ),
          ],
        );
      },
    );
  }
}
