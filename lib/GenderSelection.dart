import 'package:flutter/material.dart';

import 'FemaleSelection.dart';
import 'MaleSelection.dart';

class GenderSelection extends StatelessWidget {
  const GenderSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("CODAssistant"),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: Material(
                  child: InkResponse(
                    containedInkWell: true,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FemaleSelection(),
                      ),
                    ),
                    child: Ink.image(
                      image:
                          const AssetImage("assets/images/female_symbol.png"),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 300,
                width: 300,
                child: Material(
                  child: InkResponse(
                    containedInkWell: true,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MaleSelection(),
                      ),
                    ),
                    child: Ink.image(
                      image: const AssetImage("assets/images/male_symbol.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
