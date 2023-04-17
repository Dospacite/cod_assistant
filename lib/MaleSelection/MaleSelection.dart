import 'package:cod_assistant/MaleSelection/HeadSelectionScreen.dart';
import 'package:flutter/material.dart';

import '../Selection.dart';
import 'dart:math' as math;

import '../Symptom/Symptoms.dart';

class MaleSelection extends StatelessWidget {
  const MaleSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            const Positioned(
              child: Image(
                image: AssetImage("assets/images/male_body_front.png"),
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
              left: constraints.biggest.width * 0.208,
              width: constraints.biggest.width * 0.18,
              height: constraints.biggest.height * 0.12,
              destination: const HeadSelectionScreen(),
            ),
            Selection(
              // Head
              top: constraints.biggest.height * 0.15,
              left: constraints.biggest.width * 0.208,
              width: constraints.biggest.width * 0.18,
              height: constraints.biggest.height * 0.05,
              destination: Symptoms.neck.getWidget(context),
            ),
            Selection(
              // Chest
              top: constraints.biggest.height * 0.2,
              left: constraints.biggest.width * 0.165,
              width: constraints.biggest.width * 0.27,
              height: constraints.biggest.height * 0.12,
              destination: Symptoms.chest.getWidget(context),
            ),
            Selection(
              // Chest
              top: constraints.biggest.height * 0.321,
              left: constraints.biggest.width * 0.175,
              width: constraints.biggest.width * 0.24,
              height: constraints.biggest.height * 0.11,
              destination: Symptoms.stomach.getWidget(context),
            ),
            Selection(
              // Crotch
              top: constraints.biggest.height * 0.43,
              left: constraints.biggest.width * 0.2,
              width: constraints.biggest.width * 0.2,
              height: constraints.biggest.height * 0.13,
              destination: Symptoms.male.getWidget(context),
            ),
            Positioned(
              // Left Arm
              top: constraints.biggest.height * 0.23,
              left: constraints.biggest.width * 0.07,
              child: Transform.rotate(
                angle: math.pi / 12,
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
              left: constraints.biggest.width * 0.44,
              child: Transform.rotate(
                angle: -math.pi / 12,
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
              left: constraints.biggest.width * 0.185,
              width: constraints.biggest.width * 0.1,
              height: constraints.biggest.height * 0.19,
              destination: Symptoms.leg.getWidget(context),
            ),
            Selection(
              // Right Leg
              top: constraints.biggest.height * 0.59,
              left: constraints.biggest.width * 0.305,
              width: constraints.biggest.width * 0.1,
              height: constraints.biggest.height * 0.19,
              destination: Symptoms.leg.getWidget(context),
            ),
            Selection(
              // Left Feet
              top: constraints.biggest.height * 0.92,
              left: constraints.biggest.width * 0.305,
              width: constraints.biggest.width * 0.1,
              height: constraints.biggest.height * 0.08,
              destination: Symptoms.feet.getWidget(context),
            ),
            Selection(
              // Right Feet
              top: constraints.biggest.height * 0.92,
              left: constraints.biggest.width * 0.195,
              width: constraints.biggest.width * 0.1,
              height: constraints.biggest.height * 0.08,
              destination: Symptoms.feet.getWidget(context),
            ),
          ],
        );
      },
    );
  }
}
