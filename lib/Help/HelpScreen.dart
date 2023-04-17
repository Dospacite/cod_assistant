import 'package:cod_assistant/Help/HelpStep.dart';
import 'package:cod_assistant/Help/HelpText.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50),
              ),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
                bottom: 15,
              ),
              child: const Text(
                "HOW TO USE?",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      HelpStep(step: 1),
                      HelpText(text: "CHOOSE\nTHE REGION"),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image(
                      image: AssetImage("assets/images/click.png"),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
              height: 50,
              indent: 30,
              endIndent: 30,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      image: AssetImage("assets/images/selection.png"),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      HelpStep(step: 2),
                      HelpText(text: "CHOOSE THE\nSYMPTOMS"),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
              height: 50,
              indent: 30,
              endIndent: 30,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      HelpStep(step: 3),
                      HelpText(text: "SHOW THE\nPHONE"),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  const Image(
                      image: AssetImage("assets/images/display.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkResponse(
              onTap: () => Navigator.pushNamed(
                context,
                "/gender",
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.play_arrow,
                    size: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: 5,
                      bottom: 5,
                    ),
                    child: Text(
                      "Start",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
