import 'package:cod_assistant/Bodyparts_Male/HeadSelection.dart';
import 'package:flutter/material.dart';

import 'MaleSelectionBack.dart';
import 'Selection.dart';
import 'Symptoms.dart';

class MaleSelection extends StatelessWidget {
  const MaleSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("CODAssistant"),
        ),
        body: Center(
          child: LayoutBuilder(builder: (context, constraints) {
            return Stack(
              children: [
                Ink.image(
                    image:
                        const AssetImage("assets/images/male_body_front.png"),
                    fit: BoxFit.fitHeight),
                Selection(
                  // Head
                  top: constraints.biggest.height * 0.01,
                  left: constraints.biggest.width * 0.39,
                  height: 85,
                  width: 85,
                  destination: const HeadSelection(),
                ),
                Selection(
                  // Neck
                  top: constraints.biggest.height * 0.12,
                  left: constraints.biggest.width * 0.37,
                  height: 35,
                  width: 105,
                  destination: Symptoms.neck.getWidget(context),
                ),
                Selection(
                  // Chest
                  top: constraints.biggest.height * 0.2,
                  left: constraints.biggest.width * 0.425,
                  height: 65,
                  width: 65,
                  destination: Symptoms.chest.getWidget(context),
                ),
                Selection(
                  // Abdomen
                  top: constraints.biggest.height * 0.35,
                  left: constraints.biggest.width * 0.42,
                  height: 65,
                  width: 65,
                  destination: Symptoms.stomach.getWidget(context),
                ),
                Selection(
                  // Crotch
                  top: constraints.biggest.height * 0.45,
                  left: constraints.biggest.width * 0.415,
                  height: 65,
                  width: 65,
                  destination: Symptoms.male.getWidget(context),
                ),
                Selection(
                  // Legs
                  top: constraints.biggest.height * 0.65,
                  left: constraints.biggest.width * 0.36,
                  height: 105,
                  width: 105,
                  destination: Symptoms.leg.getWidget(context),
                  iconColor: Colors.black,
                ),
                Selection(
                  // Feet
                  top: constraints.biggest.height * 0.85,
                  left: constraints.biggest.width * 0.3,
                  height: 105,
                  width: 155,
                  destination: Symptoms.feet.getWidget(context),
                  iconColor: Colors.black,
                ),
                Selection(
                  // Left Arm
                  top: constraints.biggest.height * 0.32,
                  left: constraints.biggest.width * 0.13,
                  height: 105,
                  width: 105,
                  destination: Symptoms.hand.getWidget(context),
                ),
                Selection(
                  // Right Arm
                  top: constraints.biggest.height * 0.32,
                  left: constraints.biggest.width * 0.6,
                  height: 105,
                  width: 105,
                  destination: Symptoms.hand.getWidget(context),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: InkResponse(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MaleSelectionBack(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.u_turn_left,
                      size: 50,
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
