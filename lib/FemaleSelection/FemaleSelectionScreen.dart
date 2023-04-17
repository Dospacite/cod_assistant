import 'package:cod_assistant/FemaleSelection/FemaleSelection.dart';
import 'package:flutter/material.dart';

import 'FemaleSelectionBack.dart';

class FemaleSelectionScreen extends StatefulWidget {
  const FemaleSelectionScreen({Key? key}) : super(key: key);

  @override
  State<FemaleSelectionScreen> createState() => _FemaleSelectionScreenState();
}

class _FemaleSelectionScreenState extends State<FemaleSelectionScreen> {
  bool isFlipped = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: constraints.maxHeight * 0.03,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "CHOOSE THE REGION",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.03,
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.73,
                    width: constraints.maxWidth * 0.6,
                    child: isFlipped
                        ? const FemaleSelectionBack()
                        : const FemaleSelection(),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.03,
                  ),
                  InkResponse(
                    onTap: () {
                      setState(() {
                        isFlipped = !isFlipped;
                      });
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white54,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Icon(Icons.flip, size: 70),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
