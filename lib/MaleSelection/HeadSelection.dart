import 'package:flutter/material.dart';

import '../Selection.dart';
import '../Symptom/Symptoms.dart';

class HeadSelection extends StatelessWidget {
  const HeadSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Selection(
              // Head
              top: constraints.biggest.height * 0.2,
              left: constraints.biggest.width * 0.37,
              height: constraints.biggest.width * 0.27,
              width: constraints.biggest.width * 0.27,
              destination: Symptoms.head.getWidget(context),
            ),
            Selection(
              // Left Eye
              top: constraints.biggest.height * 0.54,
              left: constraints.biggest.width * 0.26,
              height: constraints.biggest.width * 0.15,
              width: constraints.biggest.width * 0.15,
              destination: Symptoms.eye.getWidget(context),
            ),
            Selection(
              // Right Eye
              top: constraints.biggest.height * 0.54,
              left: constraints.biggest.width * 0.59,
              height: constraints.biggest.width * 0.15,
              width: constraints.biggest.width * 0.15,
              destination: Symptoms.eye.getWidget(context),
            ),
            Selection(
              // Nose
              top: constraints.biggest.height * 0.64,
              left: constraints.biggest.width * 0.43,
              height: constraints.biggest.width * 0.15,
              width: constraints.biggest.width * 0.15,
              destination: Symptoms.nose.getWidget(context),
            ),
            Selection(
              // Mouth
              top: constraints.biggest.height * 0.74,
              left: constraints.biggest.width * 0.36,
              height: constraints.biggest.width * 0.15,
              width: constraints.biggest.width * 0.28,
              destination: Symptoms.mouth.getWidget(context),
            ),
            Selection(
              // Left Ear
              top: constraints.biggest.height * 0.54,
              left: constraints.biggest.width * 0.04,
              height: constraints.biggest.width * 0.2,
              width: constraints.biggest.width * 0.15,
              destination: Symptoms.ear.getWidget(context),
            ),
            Selection(
              // Right Ear
              top: constraints.biggest.height * 0.54,
              left: constraints.biggest.width * 0.8,
              height: constraints.biggest.width * 0.2,
              width: constraints.biggest.width * 0.15,
              destination: Symptoms.ear.getWidget(context),
            ),
            Ink.image(
              image: const AssetImage("assets/images/male_head.png"),
            ),
            Positioned(
              height: constraints.biggest.height * 0.1,
              width: constraints.biggest.width * 0.2,
              top: constraints.biggest.height * 0.15,
              left: constraints.biggest.width * 0.79,
              child: Ink.image(
                fit: BoxFit.fitHeight,
                image: const AssetImage("assets/images/click.gif"),
              ),
            ),
          ],
        );
      },
    );
  }
}
