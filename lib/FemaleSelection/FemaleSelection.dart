import 'package:cod_assistant/FemaleSelection/HeadSelectionScreen.dart';
import 'package:flutter/material.dart';

import '../Selection.dart';
import 'dart:math' as math;

import '../Symptom/Symptoms.dart';

class FemaleSelection extends StatelessWidget {
  const FemaleSelection({Key? key}) : super(key: key);

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
                image: AssetImage("assets/images/female_body_front.png"),
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
              // Head
              top: constraints.biggest.height * 0.03,
              left: constraints.biggest.width * 0.398,
              width: constraints.biggest.width * 0.2,
              height: constraints.biggest.height * 0.12,
              destination: const HeadSelectionScreen(),
            ),
            Selection(
              // Neck
              top: constraints.biggest.height * 0.15,
              left: constraints.biggest.width * 0.42,
              width: constraints.biggest.width * 0.15,
              height: constraints.biggest.height * 0.05,
              destination: Symptoms.neck.getWidget(context),
            ),
            Selection(
              // Chest
              top: constraints.biggest.height * 0.2,
              left: constraints.biggest.width * 0.33,
              width: constraints.biggest.width * 0.35,
              height: constraints.biggest.height * 0.12,
              destination: Symptoms.chest.getWidget(context),
            ),
            Selection(
              // Stomach
              top: constraints.biggest.height * 0.32,
              left: constraints.biggest.width * 0.345,
              width: constraints.biggest.width * 0.3,
              height: constraints.biggest.height * 0.11,
              destination: Symptoms.chest.getWidget(context),
            ),
            Selection(
              // Crotch
              top: constraints.biggest.height * 0.43,
              left: constraints.biggest.width * 0.4,
              width: constraints.biggest.width * 0.2,
              height: constraints.biggest.height * 0.13,
              destination: Symptoms.female.getWidget(context),
            ),
            Positioned(
              // Left Arm
              top: constraints.biggest.height * 0.23,
              left: constraints.biggest.width * 0.23,
              child: Transform.rotate(
                angle: math.pi / 16,
                child: SizedBox(
                  width: constraints.biggest.width * 0.08,
                  height: constraints.biggest.height * 0.2,
                  child: Material(
                    borderOnForeground: true,
                    shape: const StadiumBorder(),
                    color: Colors.white54,
                    child: InkResponse(
                      onTap: () => Navigator.pushNamed(context, '/arm'),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // Right Arm
              top: constraints.biggest.height * 0.23,
              left: constraints.biggest.width * 0.69,
              child: Transform.rotate(
                angle: -math.pi / 16,
                child: SizedBox(
                  width: constraints.biggest.width * 0.08,
                  height: constraints.biggest.height * 0.2,
                  child: Material(
                    borderOnForeground: true,
                    shape: const StadiumBorder(),
                    color: Colors.white54,
                    child: InkResponse(
                      onTap: () => Navigator.pushNamed(context, '/arm'),
                    ),
                  ),
                ),
              ),
            ),
            Selection(
              // Left Leg
              top: constraints.biggest.height * 0.59,
              left: constraints.biggest.width * 0.375,
              width: constraints.biggest.width * 0.1,
              height: constraints.biggest.height * 0.19,
              destination: Symptoms.leg.getWidget(context),
            ),
            Selection(
              // Right Leg
              top: constraints.biggest.height * 0.59,
              left: constraints.biggest.width * 0.525,
              width: constraints.biggest.width * 0.1,
              height: constraints.biggest.height * 0.19,
              destination: Symptoms.leg.getWidget(context),
            ),
            Selection(
              // Left Feet
              top: constraints.biggest.height * 0.92,
              left: constraints.biggest.width * 0.505,
              width: constraints.biggest.width * 0.15,
              height: constraints.biggest.height * 0.08,
              destination: Symptoms.feet.getWidget(context),
            ),
            Selection(
              // Right Feet
              top: constraints.biggest.height * 0.92,
              left: constraints.biggest.width * 0.335,
              width: constraints.biggest.width * 0.15,
              height: constraints.biggest.height * 0.08,
              destination: Symptoms.feet.getWidget(context),
            ),
          ],
        );
      },
    );
  }
}
