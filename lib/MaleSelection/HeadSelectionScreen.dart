import 'package:cod_assistant/MaleSelection/HeadSelection.dart';
import 'package:flutter/material.dart';

class HeadSelectionScreen extends StatelessWidget {
  const HeadSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
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
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: const HeadSelection(),
              ),
              InkResponse(
                onTap: () {
                  Navigator.pushNamed(context, '/skin');
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  decoration: const BoxDecoration(
                    color: Colors.white70,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Image(
                    fit: BoxFit.fitHeight,
                    image: AssetImage("assets/images/skin.png"),
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
