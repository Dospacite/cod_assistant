import 'package:flutter/material.dart';

import '../Selection.dart';
import '../Symptom/Symptoms.dart';

class MaleSelectionBack extends StatelessWidget {
  const MaleSelectionBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned(
              child: Image(
                image: AssetImage("assets/images/male_body_back.png"),
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
              left: constraints.biggest.width * 0.188,
              width: constraints.biggest.width * 0.225,
              height: constraints.biggest.height * 0.12,
              destination: Symptoms.back.getWidget(context),
            ),
            Selection(
              // Hip
              top: constraints.biggest.height * 0.44,
              left: constraints.biggest.width * 0.188,
              width: constraints.biggest.width * 0.23,
              height: constraints.biggest.height * 0.1,
              destination: Symptoms.hip.getWidget(context),
            ),
          ],
        );
      },
    );
  }
}
