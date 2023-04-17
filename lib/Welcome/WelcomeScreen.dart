import 'package:cod_assistant/Welcome/WelcomeMenuOption.dart';
import 'package:cod_assistant/Welcome/cod_assistant_logo.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: constraints.biggest.height * 0.08,
                    child: const CODAssistantLogo(),
                  ),
                  // Buttons
                  Positioned(
                    top: constraints.biggest.height * 0.3,
                    left: constraints.biggest.width * 0.03,
                    width: constraints.biggest.width * 0.7,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Wrap(
                        direction: Axis.vertical,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        spacing: 40,
                        children: [
                          WelcomeMenuOption(
                            icon: const Icon(
                              Icons.play_arrow,
                              size: 100,
                            ),
                            destination: '/' + Hive.box('profile').get('gender', defaultValue: 'gender'),
                            text: "START",
                            fontSize: 24,
                            letterSpacing: 8,
                            spacing: 0,
                            insets: const EdgeInsets.only(
                              left: 40,
                              right: 40,
                              top: 15,
                              bottom: 15,
                            ),
                          ),
                          const WelcomeMenuOption(
                            icon: Icon(
                              Icons.account_circle,
                              size: 60,
                            ),
                            destination: "/profile",
                            text: "MY PROFILE",
                            indent: 15,
                          ),
                          const WelcomeMenuOption(
                            icon: Icon(
                              Icons.help,
                              size: 60,
                            ),
                            destination: "/help",
                            text: "HOW TO USE?",
                            indent: 15,
                          ),
                        ],
                      ),
                    ),
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
