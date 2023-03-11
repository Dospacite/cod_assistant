import 'package:flutter/material.dart';

import '../Selection.dart';
import '../Symptoms.dart';

class HeadSelection extends StatelessWidget {
  const HeadSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("CODAssistant"),
        ),
        body: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                children: [
                  Selection(
                    // Left Eye
                    top: constraints.biggest.height * 0.46,
                    left: constraints.biggest.width * 0.25,
                    height: 85,
                    width: 85,
                    destination: Symptoms.eye.getWidget(context),
                  ),
                  Selection(
                    // Right Eye
                    top: constraints.biggest.height * 0.45,
                    left: constraints.biggest.width * 0.63,
                    height: 85,
                    width: 85,
                    destination: Symptoms.eye.getWidget(context),
                  ),
                  Selection(
                    // Left Ear
                    top: constraints.biggest.height * 0.5,
                    left: -constraints.biggest.width * 0.05,
                    height: 95,
                    width: 95,
                    destination: Symptoms.ear.getWidget(context),
                  ),
                  Selection(
                    // Right Ear
                    top: constraints.biggest.height * 0.5,
                    left: constraints.biggest.width * 0.8,
                    height: 95,
                    width: 95,
                    destination: Symptoms.ear.getWidget(context),
                  ),
                  Selection(
                    // Hair
                    top: constraints.biggest.height * 0.12,
                    left: constraints.biggest.width * 0.4,
                    height: 95,
                    width: 95,
                    destination: Symptoms.head.getWidget(context),
                    backgroundColor: Colors.black38,
                  ),
                  Selection(
                    // Forehead
                    top: constraints.biggest.height * 0.3,
                    left: constraints.biggest.width * 0.42,
                    height: 95,
                    width: 95,
                    destination: Symptoms.skin.getWidget(context),
                  ),
                  Selection(
                    // Nose
                    top: constraints.biggest.height * 0.55,
                    left: constraints.biggest.width * 0.44,
                    height: 95,
                    width: 95,
                    destination: Symptoms.nose.getWidget(context),
                  ),
                  Selection(
                    // Mouth
                    top: constraints.biggest.height * 0.7,
                    left: constraints.biggest.width * 0.33,
                    height: 65,
                    width: 165,
                    destination: Symptoms.mouth.getWidget(context),
                  ),
                  Selection(
                    // Chin
                    top: constraints.biggest.height * 0.84,
                    left: constraints.biggest.width * 0.35,
                    height: 65,
                    width: 145,
                    destination: Symptoms.skin.getWidget(context),
                  ),
                  Ink.image(
                    image: const AssetImage(
                        "assets/images/male_head_selection.png"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
