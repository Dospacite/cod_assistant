import 'package:flutter/material.dart';

import 'Selection.dart';
import 'Symptoms.dart';

class MaleSelectionBack extends StatelessWidget {
  const MaleSelectionBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("CODAssistant"),
        ),
        body: Center(
          child: Stack(
            children: [
              Selection(
                // Back
                top: 125,
                left: 150,
                height: 105,
                width: 105,
                destination: Symptoms.back.getWidget(context),
              ),
              Selection(
                // Waist
                top: 275,
                left: 150,
                height: 105,
                width: 105,
                destination: Symptoms.hip.getWidget(context),
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
              Ink.image(
                  image: const AssetImage("assets/images/male_body_front.png"),
                  fit: BoxFit.fitHeight),
            ],
          ),
        ),
      ),
    );
  }
}
